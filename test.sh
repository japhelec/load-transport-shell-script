#!/bin/bash

# =============================================================
# [fixed config]
# =============================================================
# interfaces
IF_built_in="wlp0s20f3"
IF_Long="wlx1cbfce8dc7fe" 
IF_DLink="wlxc4e90a08629a"
IF_1=$IF_built_in
IF_2=$IF_Long
IF_3=$IF_DLink

# APs
AP_TELLO_601="tello_601"
AP_TELLO_C="TELLO-584E48"
AP_TELLO_E="TELLO-5BF3D2"

# NS
NS_TELLO_601="tello_601"
NS_TELLO_C="tello_C"
NS_TELLO_E="tello_E"

# =============================================================
# [cheange config]
# =============================================================
# control which node
IS_NODE_1="false"
IS_NODE_2="true"
IS_NODE_3="false"

# control which tello
TELLO_1_AP=$AP_TELLO_601
TELLO_1_NS=$NS_TELLO_601
TELLO_2_AP=$AP_TELLO_C
TELLO_2_NS=$NS_TELLO_C
TELLO_3_AP=$AP_TELLO_E
TELLO_3_NS=$NS_TELLO_E

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

echo ${bagname:1}