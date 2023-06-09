[Top]
components : WANrouter 
out : routerOut1 routerOut2 routerOut3 packetsDropped 
in : routerIn1 routerIn2 routerIn3 
Link : routerIn3 routerIn3@WANrouter
Link : routerIn1 routerIn1@WANrouter
Link : routerIn2 routerIn2@WANrouter
Link : routerOut3@WANrouter routerOut3
Link : routerOut2@WANrouter routerOut2
Link : routerOut1@WANrouter routerOut1
Link : packetsDropped@WANrouter packetsDropped

[WANrouter]
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
Link : switchOut3@switch2 routerOut3
Link : switchOut2@switch2 routerOut2
Link : switchOut1@switch2 routerOut1
Link : packetsDropped@switch2 packetsDropped
Link : switchOut3@switch3 routerOut3
Link : switchOut2@switch3 routerOut2
Link : switchOut1@switch3 routerOut1
Link : packetsDropped@switch3 packetsDropped
Link : switchOut3@switch1 done@queue1
Link : switchOut2@switch1 done@queue1
Link : switchOut1@switch1 done@queue1
Link : packetsDropped@switch1 done@queue1
Link : switchOut3@switch2 done@queue2
Link : switchOut2@switch2 done@queue2
Link : switchOut1@switch2 done@queue2
Link : packetsDropped@switch2 done@queue2
Link : switchOut3@switch3 done@queue3
Link : switchOut2@switch3 done@queue3
Link : switchOut1@switch3 done@queue3
Link : packetsDropped@switch3 done@queue3

[queue1]
preparation : 00:00:03:00

[queue2]
preparation : 00:00:03:000

[queue3]
preparation : 00:00:03:000

[switch1]
source : WANswitch.cdd

[switch2]
source : WANswitch.cdd

[switch3]
source : WANswitch.cdd



