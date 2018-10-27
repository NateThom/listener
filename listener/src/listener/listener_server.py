#!/usr/bin/env python

from listener.srv import *
import rospy

from deepspeech import Model
import scipy.io.wavfile as wav
import sys
import glob
import os

def handle_listener(req):

    # Ref: https://progur.com/2018/02/how-to-use-mozilla-deepspeech-tutorial.html
    #      https://github.com/mozilla/DeepSpeech/blob/master/native_client/python/client.py

    ALPHABET = os.getcwd() + "/DeepSpeech/models/alphabet.txt"
    OUTPUT_GRAPH = os.getcwd() + "/DeepSpeech/models/output_graph.pb"
    audio_file = glob.glob(os.getcwd() + "/DeepSpeech/audio/" + req.filename)

    model = Model(OUTPUT_GRAPH, 26, 9, ALPHABET, 500)
    print("audio_file", audio_file[0])
    fs, audio = wav.read(audio_file[0])
    data = model.stt(audio, fs)

    print "Ready to interpret more speech audio."

    return data

def listener_server():
    rospy.init_node('listener_server')
    s = rospy.Service('listen', Listen, handle_listener)
    print "Ready to interpret speech audio."
    rospy.spin()

if __name__ == "__main__":
    listener_server()