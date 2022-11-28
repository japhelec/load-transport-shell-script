#!/bin/bash

source /home/kuei/Documents/shell/coop_config.sh

if [ $IS_NODE_1 == "true" ]
then
    rosrun load_transport talker.py $TELLO_1_NS/manual_takeoff &
fi
sleep 1

if [ $IS_NODE_2 == "true" ]
then
    rosrun load_transport talker.py $TELLO_2_NS/manual_takeoff &
fi
sleep 1

if [ $IS_NODE_3 == "true" ]
then
    rosrun load_transport talker.py $TELLO_3_NS/manual_takeoff &
fi
sleep 1

if [ $IS_NODE_4 == "true" ]
then
    rosrun load_transport talker.py $TELLO_4_NS/manual_takeoff &
fi
