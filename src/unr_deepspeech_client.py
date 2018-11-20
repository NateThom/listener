#!/usr/bin/env python

from sys import byteorder
from array import array
from struct import pack
import os

import pyaudio
import wave

import rospy
from unr_deepspeech.srv import *
from talker.srv import *

from rospkg import RosPack
import audioop

THRESHOLD = 500
CHUNK_SIZE = 1024
FORMAT = pyaudio.paInt16

# See: en.wikipedia.org/wiki/Levenshtein_distance
def levenshtein_distance(str1, str2):
    if len(str2) > len(str1):
        str2, str1 = str1, str2
    row_count = len(str1)
    col_count = len(str2)

    row_current = range(row_count + 1)
    for row_n in xrange(row_count):
        row_next = [row_n + 1]
        for col_n in xrange(col_count):
            delete_cost = row_current[col_n + 1] + 1
            insert_cost = row_next[col_n] + 1
            substitution_cost = row_current[col_n] + 1
            if str1[row_n] == str2[col_n]:
                substitution_cost = row_current[col_n]

            row_next.append(min([substitution_cost, delete_cost,
                                 insert_cost]))
        row_current = row_next
    return row_current[-1]

def unr_deepspeech_client(filename):
    rospy.wait_for_service('listen')
    try:
        listener = rospy.ServiceProxy('listen', Listen)
        resp1 = listener(filename)
        return resp1.prediction
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def is_silent(snd_data):
    "Returns 'True' if below the 'silent' threshold"
    return max(snd_data) < THRESHOLD

def normalize(snd_data):
    "Average the volume out"
    MAXIMUM = 16384
    times = float(MAXIMUM)/max(abs(i) for i in snd_data)

    r = array('h')
    for i in snd_data:
        r.append(int(i*times))
    return r

def trim(snd_data):
    "Trim the blank spots at the start and end"
    def _trim(snd_data):
        snd_started = False
        r = array('h')

        for i in snd_data:
            if not snd_started and abs(i)>THRESHOLD:
                snd_started = True
                r.append(i)

            elif snd_started:
                r.append(i)
        return r

    # Trim to the left
    snd_data = _trim(snd_data)

    # Trim to the right
    snd_data.reverse()
    snd_data = _trim(snd_data)
    snd_data.reverse()
    return snd_data

def add_silence(snd_data, seconds, rate):
    "Add silence to the start and end of 'snd_data' of length 'seconds' (float)"
    r = array('h', [0 for i in xrange(int(seconds*rate))])
    r.extend(snd_data)
    r.extend([0 for i in xrange(int(seconds*rate))])
    return r

def record(rate, device):
    """
    Record a word or words from the microphone and
    return the data as an array of signed shorts.

    Normalizes the audio, trims silence from the
    start and end, and pads with 0.5 seconds of
    blank sound to make sure VLC et al can play
    it without getting chopped off.
    """
    p = pyaudio.PyAudio()
    stream = p.open(format=FORMAT, channels=1, rate=rate,
        input=True, output=True, frames_per_buffer=CHUNK_SIZE,
        input_device_index=device)

    num_silent = 0
    snd_started = False

    r = array('h')

    while 1:
        # little endian, signed short
        snd_data = array('h', stream.read(CHUNK_SIZE, exception_on_overflow=False))
        if byteorder == 'big':
            snd_data.byteswap()
        r.extend(snd_data)

        silent = is_silent(snd_data)

        if silent and snd_started:
            num_silent += 1
        elif not silent and not snd_started:
            snd_started = True

        if snd_started and num_silent > 30:
            break

    sample_width = p.get_sample_size(FORMAT)
    stream.stop_stream()
    stream.close()
    p.terminate()

    r = normalize(r)
    r = trim(r)
    r = add_silence(r, 0.5, rate)
    return sample_width, r

def record_to_file(path, rate, device):
    "Records from the microphone and outputs the resulting data to 'path'"
    sample_width, data = record(rate, device)

    if rate != 16000:
        data_16GHz = audioop.ratecv(data, sample_width, 1, 48000, 16000, None)[0]
    else:
        data_16GHz = pack('<' + ('h'*len(data)), *data)

    wf = wave.open(path, 'wb')
    wf.setnchannels(1)
    wf.setsampwidth(sample_width)
    wf.setframerate(16000)
    wf.writeframes(data_16GHz)
    wf.close()

if __name__ == "__main__":
    device = 6
    rate = 48000
    print("Current device is {}. Please make sure this is the device you want".format(device))
    print("Current sample rate is {}".format(rate))
    # Print audio devices
    # Ref: https://stackoverflow.com/a/39677871
    p = pyaudio.PyAudio()
    info = p.get_host_api_info_by_index(0)
    numdevices = info.get('deviceCount')
    for i in range(0, numdevices):
         if (p.get_device_info_by_host_api_device_index(0, i).get('maxInputChannels')) > 0:
             print "Input Device id ", i, " - ", p.get_device_info_by_host_api_device_index(0, i).get('name')

    rospy.init_node("unr_deepspeech_client")
    current_time = int(rospy.get_time())
    rp = RosPack()
    audio_path = rp.get_path("unr_deepspeech") + "/data"
    record_to_file("{}/{}.wav".format(audio_path, current_time), rate=rate, device=device)

    print("Text: {}".format(unr_deepspeech_client("{}/{}.wav".format(audio_path, current_time))))

    # clean up after ourselves
    keep_wav = rospy.get_param("/unr_deepspeech/keep_wav", False)
    if not keep_wav:
        os.remove("{}/{}.wav".format(audio_path, current_time))
