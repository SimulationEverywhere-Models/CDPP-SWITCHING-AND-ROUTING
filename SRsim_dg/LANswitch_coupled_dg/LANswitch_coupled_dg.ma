[Top]
components : LANswitch_coupled 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn4 switchIn4@LANswitch_coupled
Link : switchIn1 switchIn1@LANswitch_coupled
Link : switchIn2 switchIn2@LANswitch_coupled
Link : switchIn3 switchIn3@LANswitch_coupled
Link : switchOut3@LANswitch_coupled switchOut3
Link : switchOu2@LANswitch_coupled switchOut2
Link : switchOut1@LANswitch_coupled switchOut1
Link : gateWay@LANswitch_coupled gateWay

[LANswitch_coupled]
components : queue1@Queue queue2@Queue queue3@Queue queue4@Queue switch1@ggad switch2@ggad switch3@ggad switch4@ggad 
out : switchOut1 switchOu2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn1 in@queue1
Link : switchIn2 in@queue2
Link : switchIn3 in@queue3
Link : switchIn4 in@queue4
Link : out@queue2 switchIn@switch2
Link : out@queue1 switchIn@switch1
Link : out@queue3 switchIn@switch3
Link : out@queue4 switchIn@switch4
Link : switchOut3@switch1 switchOut3
Link : switchOut2@switch1 switchOu2
Link : switchOut1@switch1 switchOut1
Link : gateWay@switch1 gateWay
Link : switchOut3@switch1 done@queue1
Link : switchOut2@switch1 done@queue1
Link : switchOut1@switch1 done@queue1
Link : gateWay@switch1 done@queue1
Link : switchOut3@switch2 switchOut3
Link : switchOut2@switch2 switchOu2
Link : switchOut1@switch2 switchOut1
Link : gateWay@switch2 gateWay
Link : switchOut3@switch2 done@queue2
Link : switchOut2@switch2 done@queue2
Link : switchOut1@switch2 done@queue2
Link : gateWay@switch2 done@queue2
Link : switchOut3@switch3 switchOut3
Link : switchOut2@switch3 switchOu2
Link : switchOut1@switch3 switchOut1
Link : gateWay@switch3 gateWay
Link : switchOut3@switch3 done@queue3
Link : switchOut2@switch3 done@queue3
Link : switchOut1@switch3 done@queue3
Link : gateWay@switch3 done@queue3
Link : gateWay@switch4 gateWay
Link : switchOut1@switch4 switchOut1
Link : switchOut2@switch4 switchOu2
Link : switchOut3@switch4 switchOut3
Link : switchOut3@switch4 done@queue4
Link : switchOut2@switch4 done@queue4
Link : switchOut1@switch4 done@queue4
Link : gateWay@switch4 done@queue4

[queue1]
preparation : 00:00:03:000

[queue2]
preparation : 00:00:03:000

[queue3]
preparation : 00:00:03:000

[queue4]
preparation : 00:00:03:000

[switch1]
source : LANswitch.cdd

[switch2]
source : LANswitch.cdd

[switch3]
source : LANswitch.cdd

[switch4]
source : LANswitch.cdd



