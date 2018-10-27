# ros
All of my work with ROS.

listener is a package for ros. Right now it functions as a server/client. The client sends a file name (.wav) to the server and the server runs a deepspeech script written by Bryson Lingenfelter to interpret the file. Once the file is interpreted with DeepSpeech the server returns it's prediction for what the file is saying as a string.

To use the server you must have DeepSpeech installed on your machine (https://github.com/mozilla/DeepSpeech) and you must also have the DeepSpeech directory in your workspace's root (should contain DeepSpeech, src, build, devel, etc.). Also, the audio files to be interpreted must be located in example_ws/DeepSpeech/audio/filename.wav

Finally, the DeepSpeech.tar.gz was uploaded using github lfs. You'll need that to retrieve the directory I believe.
