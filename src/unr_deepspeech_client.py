#!/usr/bin/env python

import sys
import rospy
from unr_deepspeech.srv import *

def unr_deepspeech_client(filename):
    rospy.wait_for_service('listen')
    try:
        listener = rospy.ServiceProxy('listen', Listen)
        resp1 = listener(filename)
        return resp1.prediction
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def usage():
    return "%s [filename]" % sys.argv[0]

if __name__ == "__main__":
    if len(sys.argv) == 2:
        filename = sys.argv[1]
    else:
        print usage()
        sys.exit(1)
    print "Requesting prediction for speech audio in %s..." % (filename)
    print "Prediction for speech audio in %s: \n %s"%(filename, unr_deepspeech_client(filename))
