#!/bin/bash

bagname=".bag"

if [ $IS_NODE_3 == "true" ]
then
    bagname="_${TELLO_3_NS:6}${bagname}"
else
    bagname="_x${bagname}"
fi

if [ $IS_NODE_2 == "true" ]
then
    bagname="_${TELLO_2_NS:6}${bagname}"
else
    bagname="_x${bagname}"
fi

if [ $IS_NODE_1 == "true" ]
then
    bagname="_${TELLO_1_NS:6}${bagname}"
else
    bagname="_x${bagname}"
fi

rosbag record -a -o "/home/kuei/Documents/shell/records/${bagname:1}" &