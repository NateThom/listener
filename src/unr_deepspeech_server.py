#!/usr/bin/env python

from unr_deepspeech.srv import *
import rospy

#from deepspeech import Model rck
#import scipy.io.wavfile as wav rck
import wave
import struct

from deepspeech_node import DeepspeechNode

import sys
import glob
import os

def handle_listener(req):

    global listener
    
    audio_path = req.filename
    audio_file = wave.open(audio_path)
    fs = audio_file.getframerate()
    audio_string = audio_file.readframes(-1)
    audio = [struct.unpack("<h", audio_string[i:i+2])[0]
             for i in xrange(0, len(audio_string), 2)]    

    text = listener.stt(fs, audio)
    print(text)
    
    return text

def listener_server():
    global listener
    listener = DeepspeechNode(model_path="./model/")
    rospy.init_node('listener_server')
    s = rospy.Service('listen', Listen, handle_listener)
    print "Ready to interpret speech audio."
    rospy.spin()

if __name__ == "__main__":
    listener_server()
