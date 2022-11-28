#!/bin/bash
# =============================================================
# [fixed config]
# =============================================================
# interfaces
IF_built_in="wlp0s20f3"
IF_Long="wlx1cbfce8dc7fe" 
IF_Totolink="wlx5c925ed5619a"
IF_DLink_B="wlxc4e90a08629a"
IF_1=$IF_built_in
IF_2=$IF_Long
IF_3=$IF_Totolink
IF_4=$IF_DLink_B

# APs
AP_TELLO_601="tello_601"
AP_TELLO_C="TELLO-584E48"
AP_TELLO_D="TELLO-56E356"
AP_TELLO_E="TELLO-5BF3D2"
AP_TELLO_A="TELLO_A"
AP_TELLO_B="TELLO_B"
AP_TELLO_F="TELLO_F"

# NS
NS_TELLO_601="tello_601"
NS_TELLO_C="tello_C"
NS_TELLO_D="tello_D"
NS_TELLO_E="tello_E"
NS_TELLO_A="tello_A"
NS_TELLO_B="tello_B"
NS_TELLO_F="tello_F"

# control which tello
TELLO_1_AP=$AP_TELLO_601
TELLO_1_NS=$NS_TELLO_601
TELLO_2_AP=$AP_TELLO_C
TELLO_2_NS=$NS_TELLO_C
TELLO_3_AP=$AP_TELLO_D
TELLO_3_NS=$NS_TELLO_D
TELLO_4_AP=$AP_TELLO_E
TELLO_4_NS=$NS_TELLO_E

# =============================================================
# [change config]
# =============================================================
# control which node
IS_NODE_1="true"
IS_NODE_2="false"
IS_NODE_3="false"
IS_NODE_4="false"