#!/bin/bash

source /home/kuei/Documents/shell/coop_config.sh

if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport talker.py $TELLO_1_NS/land &
fi
if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport talker.py $TELLO_2_NS/land &
fi
if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport talker.py $TELLO_3_NS/land &
fi
if [ $IS_NODE_4 == "true" ]
then
    rosrun load_transport talker.py $TELLO_4_NS/land &
fi