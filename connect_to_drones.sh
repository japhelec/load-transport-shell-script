#!/bin/bash
nmcli radio wifi off
sleep 5
nmcli radio wifi on


# nmcli dev wifi rescan ifname $IF_built_in
sleep 10

if [ $IS_NODE_1 == "true" ]
then 
    nmcli dev wifi connect $TELLO_1_AP ifname $IF_1 &
fi

if [ $IS_NODE_2 == "true" ]
then 
    nmcli dev wifi connect $TELLO_2_AP ifname $IF_2 &
fi

if [ $IS_NODE_3 == "true" ]
then 
    nmcli dev wifi connect $TELLO_3_AP ifname $IF_3 &
fi

if [ $IS_NODE_4 == "true" ]
then 
    nmcli dev wifi connect $TELLO_4_AP ifname $IF_4 &
fi

sleep 15