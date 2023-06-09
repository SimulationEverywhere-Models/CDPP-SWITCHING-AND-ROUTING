[Top]
components : WAN 
out : WANOut1 WANOut2 WANOut3 packetsDropped1 packetsDropped2 packetsDropped3 
in : WANIn1 WANIn2 WANIn3
Link : WANIn1 WANIn1@WAN
Link : WANIn2 WANIn2@WAN 
Link : WANIn3 WANIn3@WAN
Link : WANOut1@WAN WANOut1
Link : WANOut2@WAN WANOut2
Link : WANOut3@WAN WANOut3
Link : packetsDropped1@WAN packetsDropped1
Link : packetsDropped2@WAN packetsDropped2
Link : packetsDropped3@WAN packetsDropped3
 
[WAN]
components : WANrouter1 WANrouter2 WANrouter3
out : WANOut1 WANOut2 WANOut3 packetsDropped1 packetsDropped2 packetsDropped3 
in : WANIn1 WANIn2 WANIn3
Link : WANIn1 routerIn1@WANrouter1
Link : WANIn2 routerIn1@WANrouter2
Link : WANIn3 routerIn1@WANrouter3
Link : routerOut1@WANrouter1 WANOut1
Link : routerOut1@WANrouter2 WANOut2
Link : routerOut1@WANrouter3 WANOut3 
Link : packetsDropped@WANrouter1 packetsDropped1
Link : packetsDropped@WANrouter2 packetsDropped2
Link : packetsDropped@WANrouter3 packetsDropped3
Link : routerOut2@WANrouter2 routerIn2@WANrouter1
Link : routerOut2@WANrouter3 routerIn3@WANrouter1
Link : routerOut2@WANrouter1 routerIn2@WANrouter2
Link : routerOut3@WANrouter3 routerIn3@WANrouter2
Link : routerOut3@WANrouter1 routerIn2@WANrouter3
Link : routerOut3@WANrouter2 routerIn3@WANrouter3   


[WANrouter1]
components : queue1@Queue queue2@Queue queue3@Queue switch1@ggad switch2@ggad switch3@ggad 
out : routerOut1 routerOut2 routerOut3 packetsDropped 
in : routerIn1 routerIn2 routerIn3 
Link : routerIn1 in@queue1
Link : routerIn2 in@queue2
Link : routerIn3 in@queue3
Link : out@queue1 switchIn@switch1
Link : out@queue2 switchIn@switch2
Link : out@queue3 switchIn@switch3
Link : switchOut3@switch1 routerOut3
Link : switchOut2@switch1 routerOut2
Link : switchOut1@switch1 routerOut1
Link : packetsDropped@switch1 packetsDropped
Link : switchOut3@switch1 done@queue1
Link : switchOut2@switch1 done@queue1
Link : switchOut1@switch1 done@queue1
Link : packetsDropped@switch1 done@queue1
Link : switchOut3@switch2 routerOut3
Link : switchOut2@switch2 routerOut2
Link : switchOut1@switch2 routerOut1
Link : packetsDropped@switch2 packetsDropped
Link : switchOut3@switch2 done@queue2
Link : switchOut2@switch2 done@queue2
Link : switchOut1@switch2 done@queue2
Link : packetsDropped@switch2 done@queue2
Link : switchOut3@switch3 routerOut3
Link : switchOut2@switch3 routerOut2
Link : switchOut1@switch3 routerOut1
Link : packetsDropped@switch3 packetsDropped
Link : switchOut3@switch3 done@queue3
Link : switchOut2@switch3 done@queue3
Link : switchOut1@switch3 done@queue3
Link : packetsDropped@switch3 done@queue3

[queue1]
preparation : 00:00:01:000

[queue2]
preparation : 00:00:01:000

[queue3]
preparation : 00:00:01:000

[switch1]
source : WANswitch1.cdd

[switch2]
source : WANswitch1.cdd

[switch3]
source : WANswitch1.cdd

[WANrouter2]
components : queue4@Queue queue5@Queue queue6@Queue switch4@ggad switch5@ggad switch6@ggad 
out : routerOut1 routerOut2 routerOut3 packetsDropped 
in : routerIn1 routerIn2 routerIn3 
Link : routerIn1 in@queue4
Link : routerIn2 in@queue5
Link : routerIn3 in@queue6
Link : out@queue4 switchIn@switch4
Link : out@queue5 switchIn@switch5
Link : out@queue6 switchIn@switch6
Link : switchOut3@switch4 routerOut3
Link : switchOut2@switch4 routerOut2
Link : switchOut1@switch4 routerOut1
Link : packetsDropped@switch4 packetsDropped
Link : switchOut3@switch4 done@queue4
Link : switchOut2@switch4 done@queue4
Link : switchOut1@switch4 done@queue4
Link : packetsDropped@switch4 done@queue4
Link : switchOut3@switch5 routerOut3
Link : switchOut2@switch5 routerOut2
Link : switchOut1@switch5 routerOut1
Link : packetsDropped@switch5 packetsDropped
Link : switchOut3@switch5 done@queue5
Link : switchOut2@switch5 done@queue5
Link : switchOut1@switch5 done@queue5
Link : packetsDropped@switch5 done@queue5
Link : switchOut3@switch6 routerOut3
Link : switchOut2@switch6 routerOut2
Link : switchOut1@switch6 routerOut1
Link : packetsDropped@switch6 packetsDropped
Link : switchOut3@switch6 done@queue6
Link : switchOut2@switch6 done@queue6
Link : switchOut1@switch6 done@queue6
Link : packetsDropped@switch6 done@queue6

[queue4]
preparation : 00:00:01:000

[queue5]
preparation : 00:00:01:000

[queue6]
preparation : 00:00:01:000

[switch4]
source : WANswitch2.cdd

[switch5]
source : WANswitch2.cdd

[switch6]
source : WANswitch2.cdd

[WANrouter3]
components : queue7@Queue queue8@Queue queue9@Queue switch7@ggad switch8@ggad switch9@ggad 
out : routerOut1 routerOut2 routerOut3 packetsDropped 
in : routerIn1 routerIn2 routerIn3 
Link : routerIn1 in@queue7
Link : routerIn2 in@queue8
Link : routerIn3 in@queue9
Link : out@queue7 switchIn@switch7
Link : out@queue8 switchIn@switch8
Link : out@queue9 switchIn@switch9
Link : switchOut3@switch7 routerOut3
Link : switchOut2@switch7 routerOut2
Link : switchOut1@switch7 routerOut1
Link : packetsDropped@switch7 packetsDropped
Link : switchOut3@switch7 done@queue7
Link : switchOut2@switch7 done@queue7
Link : switchOut1@switch7 done@queue7
Link : packetsDropped@switch7 done@queue7
Link : switchOut3@switch8 routerOut3
Link : switchOut2@switch8 routerOut2
Link : switchOut1@switch8 routerOut1
Link : packetsDropped@switch8 packetsDropped
Link : switchOut3@switch8 done@queue8
Link : switchOut2@switch8 done@queue8
Link : switchOut1@switch8 done@queue8
Link : packetsDropped@switch8 done@queue8
Link : switchOut3@switch9 routerOut3
Link : switchOut2@switch9 routerOut2
Link : switchOut1@switch9 routerOut1
Link : packetsDropped@switch9 packetsDropped
Link : switchOut3@switch9 done@queue9
Link : switchOut2@switch9 done@queue9
Link : switchOut1@switch9 done@queue9
Link : packetsDropped@switch9 done@queue9

[queue7]
preparation : 00:00:01:000

[queue8]
preparation : 00:00:01:000

[queue9]
preparation : 00:00:01:000

[switch7]
source : WANswitch3.cdd

[switch8]
source : WANswitch3.cdd

[switch9]
source : WANswitch3.cdd
