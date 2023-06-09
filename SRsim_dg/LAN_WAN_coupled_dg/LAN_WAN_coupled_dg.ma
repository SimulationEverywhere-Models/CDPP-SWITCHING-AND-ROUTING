[Top]
components : LANWAN
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsGenerated4 packetsGenerated5 packetsGenerated6
out : packetsGenerated7 packetsGenerated8 packetsGenerated9
out : packetsReceived1 packetsReceived2 packetsReceived3
out : packetsReceived4 packetsReceived5 packetsReceived6
out : packetsReceived7 packetsReceived8 packetsReceived9
out : packetsDropped1 packetsDropped2 packetsDropped3
Link : packetsGenerated1@LANWAN packetsGenerated1
Link : packetsGenerated2@LANWAN packetsGenerated2
Link : packetsGenerated3@LANWAN packetsGenerated3
Link : packetsGenerated4@LANWAN packetsGenerated4
Link : packetsGenerated5@LANWAN packetsGenerated5
Link : packetsGenerated6@LANWAN packetsGenerated6
Link : packetsGenerated7@LANWAN packetsGenerated7
Link : packetsGenerated8@LANWAN packetsGenerated8
Link : packetsGenerated9@LANWAN packetsGenerated9
Link : packetsReceived1@LANWAN packetsReceived1
Link : packetsReceived2@LANWAN packetsReceived2
Link : packetsReceived3@LANWAN packetsReceived3
Link : packetsReceived4@LANWAN packetsReceived4
Link : packetsReceived5@LANWAN packetsReceived5
Link : packetsReceived6@LANWAN packetsReceived6
Link : packetsReceived7@LANWAN packetsReceived7
Link : packetsReceived8@LANWAN packetsReceived8
Link : packetsReceived9@LANWAN packetsReceived9
Link : packetsDropped1@LANWAN packetsDropped1
Link : packetsDropped2@LANWAN packetsDropped2
Link : packetsDropped3@LANWAN packetsDropped3


[LANWAN]
components : WAN LAN1 LAN2 LAN3
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsGenerated4 packetsGenerated5 packetsGenerated6
out : packetsGenerated7 packetsGenerated8 packetsGenerated9
out : packetsReceived1 packetsReceived2 packetsReceived3
out : packetsReceived4 packetsReceived5 packetsReceived6
out : packetsReceived7 packetsReceived8 packetsReceived9
out : packetsDropped1 packetsDropped2 packetsDropped3
Link : packetsGenerated1@LAN1 packetsGenerated1
Link : packetsGenerated2@LAN1 packetsGenerated2
Link : packetsGenerated3@LAN1 packetsGenerated3
Link : packetsGenerated1@LAN2 packetsGenerated4
Link : packetsGenerated2@LAN2 packetsGenerated5
Link : packetsGenerated3@LAN2 packetsGenerated6
Link : packetsGenerated1@LAN3 packetsGenerated7
Link : packetsGenerated2@LAN3 packetsGenerated8
Link : packetsGenerated3@LAN3 packetsGenerated9
Link : packetsReceived1@LAN1 packetsReceived1
Link : packetsReceived2@LAN1 packetsReceived2
Link : packetsReceived3@LAN1 packetsReceived3
Link : packetsReceived1@LAN2 packetsReceived4
Link : packetsReceived2@LAN2 packetsReceived5
Link : packetsReceived3@LAN2 packetsReceived6
Link : packetsReceived1@LAN3 packetsReceived7
Link : packetsReceived2@LAN3 packetsReceived8
Link : packetsReceived3@LAN3 packetsReceived9
Link : packetsDropped1@WAN packetsDropped1
Link : packetsDropped2@WAN packetsDropped2
Link : packetsDropped3@WAN packetsDropped3
Link : WANOut1@WAN LANIn@LAN1
Link : WANOut2@WAN LANIn@LAN2
Link : WANOut3@WAN LANIn@LAN3
Link : LANOut@LAN1 WANIn1@WAN
Link : LANOut@LAN2 WANIn2@WAN
Link : LANOut@LAN3 WANIn3@WAN

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

[LAN1]
components : workstation1 workstation2 workstation3 LANswitch_coupled1  
out : LANOut
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsReceived1 packetsReceived2 packetsReceived3
in : LANIn
Link : LANIn switchIn4@LANswitch_coupled1
Link : gateWAy@LANswitch_coupled1 LANOut
Link : packetsGenerated@workstation1 packetsGenerated1
Link : packetsGenerated@workstation2 packetsGenerated2
Link : packetsGenerated@workstation3 packetsGenerated3
Link : packetsReceived@workstation1 packetsReceived1
Link : packetsReceived@workstation2 packetsReceived2
Link : packetsReceived@workstation3 packetsReceived3
Link : packetOut@workstation1 switchIn1@LANswitch_coupled1
Link : packetOut@workstation2 switchIn2@LANswitch_coupled1
Link : packetOut@workstation3 switchIn3@LANswitch_coupled1
Link : switchOut1@LANswitch_coupled1 packetIn@workstation1
Link : switchOut2@LANswitch_coupled1 packetIn@workstation2
Link : switchOut3@LANswitch_coupled1 packetIn@workstation3


[workstation1]
components : source1@ggad sink1@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source1 packetOut
Link : packetsGenerated@source1 packetsGenerated
Link : packetsReceived@sink1 packetsReceived
Link : packetIn packetIn@sink1

[source1]
source : source1.cdd

[sink1]
source : sink1.cdd

[workstation2]
components : source2@ggad sink2@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source2 packetOut
Link : packetsGenerated@source2 packetsGenerated
Link : packetsReceived@sink2 packetsReceived
Link : packetIn packetIn@sink2

[source2]
source : source2.cdd

[sink2]
source : sink2.cdd

[workstation3]
components : source3@ggad sink3@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source3 packetOut
Link : packetsGenerated@source3 packetsGenerated
Link : packetsReceived@sink3 packetsReceived
Link : packetIn packetIn@sink3

[source3]
source : source3.cdd

[sink3]
source : sink3.cdd


[LANswitch_coupled1]
components : queue11@Queue switch11@ggad queue21@Queue switch21@ggad queue31@Queue switch31@ggad queue41@Queue switch41@ggad 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn1 in@queue11
Link : out@queue11 switchIn@switch11
Link : switchOut3@switch11 switchOut3
Link : switchOut2@switch11 switchOut2
Link : switchOut1@switch11 switchOut1
Link : gateWay@switch11 gateWay
Link : switchOut3@switch11 done@queue11
Link : switchOut2@switch11 done@queue11
Link : switchOut1@switch11 done@queue11
Link : gateWay@switch11 done@queue11
Link : switchIn2 in@queue21
Link : switchIn3 in@queue31
Link : switchIn4 in@queue41
Link : out@queue21 switchIn@switch21
Link : out@queue31 switchIn@switch31
Link : out@queue41 switchIn@switch41
Link : switchOut3@switch21 switchOut3
Link : switchOut2@switch21 switchOut2
Link : switchOut1@switch21 switchOut1
Link : gateWay@switch21 gateWay
Link : switchOut3@switch21 done@queue21
Link : switchOut2@switch21 done@queue21
Link : switchOut1@switch21 done@queue21
Link : gateWay@switch21 done@queue21
Link : switchOut3@switch31 switchOut3
Link : switchOut2@switch31 switchOut2
Link : switchOut1@switch31 switchOut1
Link : gateWay@switch31 gateWay
Link : switchOut3@switch31 done@queue31
Link : switchOut2@switch31 done@queue31
Link : switchOut1@switch31 done@queue31
Link : gateWay@switch31 done@queue31
Link : switchOut3@switch41 switchOut3
Link : switchOut2@switch41 switchOut2
Link : switchOut1@switch41 switchOut1
Link : gateWay@switch41 gateWay
Link : switchOut3@switch41 done@queue41
Link : switchOut2@switch41 done@queue41
Link : switchOut1@switch41 done@queue41
Link : gateWay@switch41 done@queue41

[queue11]
preparation : 00:00:03:000

[switch11]
source : LANswitch1.cdd

[queue21]
preparation : 00:00:03:000

[switch21]
source : LANswitch1.cdd

[queue31]
preparation : 00:00:03:000

[switch31]
source : LANswitch1.cdd

[queue41]
preparation : 00:00:03:00

[switch41]
source : LANswitch1.cdd

[LAN2]
components : workstation4 workstation5 workstation6 LANswitch_coupled2  
out : LANOut
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsReceived1 packetsReceived2 packetsReceived3
in : LANIn
Link : LANIn switchIn4@LANswitch_coupled2
Link : gateWAy@LANswitch_coupled2 LANOut
Link : packetsGenerated@workstation4 packetsGenerated1
Link : packetsGenerated@workstation5 packetsGenerated2
Link : packetsGenerated@workstation6 packetsGenerated3
Link : packetsReceived@workstation4 packetsReceived1
Link : packetsReceived@workstation5 packetsReceived2
Link : packetsReceived@workstation6 packetsReceived3
Link : packetOut@workstation4 switchIn1@LANswitch_coupled2
Link : packetOut@workstation5 switchIn2@LANswitch_coupled2
Link : packetOut@workstation6 switchIn3@LANswitch_coupled2
Link : switchOut1@LANswitch_coupled2 packetIn@workstation4
Link : switchOut2@LANswitch_coupled2 packetIn@workstation5
Link : switchOut3@LANswitch_coupled2 packetIn@workstation6


[workstation4]
components : source4@ggad sink4@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source4 packetOut
Link : packetsGenerated@source4 packetsGenerated
Link : packetsReceived@sink4 packetsReceived
Link : packetIn packetIn@sink4

[source4]
source : source4.cdd

[sink4]
source : sink4.cdd

[workstation5]
components : source5@ggad sink5@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source5 packetOut
Link : packetsGenerated@source5 packetsGenerated
Link : packetsReceived@sink5 packetsReceived
Link : packetIn packetIn@sink5

[source5]
source : source5.cdd

[sink5]
source : sink5.cdd

[workstation6]
components : source6@ggad sink6@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source6 packetOut
Link : packetsGenerated@source6 packetsGenerated
Link : packetsReceived@sink6 packetsReceived
Link : packetIn packetIn@sink6

[source6]
source : source6.cdd

[sink6]
source : sink6.cdd


[LANswitch_coupled2]
components : queue51@Queue switch51@ggad queue61@Queue switch61@ggad queue71@Queue switch71@ggad queue81@Queue switch81@ggad 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn1 in@queue51
Link : out@queue51 switchIn@switch51
Link : switchOut3@switch51 switchOut3
Link : switchOut2@switch51 switchOut2
Link : switchOut1@switch51 switchOut1
Link : gateWay@switch51 gateWay
Link : switchOut3@switch51 done@queue51
Link : switchOut2@switch51 done@queue51
Link : switchOut1@switch51 done@queue51
Link : gateWay@switch51 done@queue51
Link : switchIn2 in@queue61
Link : switchIn3 in@queue71
Link : switchIn4 in@queue81
Link : out@queue61 switchIn@switch61
Link : out@queue71 switchIn@switch71
Link : out@queue81 switchIn@switch81
Link : switchOut3@switch61 switchOut3
Link : switchOut2@switch61 switchOut2
Link : switchOut1@switch61 switchOut1
Link : gateWay@switch61 gateWay
Link : switchOut3@switch61 done@queue61
Link : switchOut2@switch61 done@queue61
Link : switchOut1@switch61 done@queue61
Link : gateWay@switch61 done@queue61
Link : switchOut3@switch71 switchOut3
Link : switchOut2@switch71 switchOut2
Link : switchOut1@switch71 switchOut1
Link : gateWay@switch71 gateWay
Link : switchOut3@switch71 done@queue71
Link : switchOut2@switch71 done@queue71
Link : switchOut1@switch71 done@queue71
Link : gateWay@switch71 done@queue71
Link : switchOut3@switch81 switchOut3
Link : switchOut2@switch81 switchOut2
Link : switchOut1@switch81 switchOut1
Link : gateWay@switch81 gateWay
Link : switchOut3@switch81 done@queue81
Link : switchOut2@switch81 done@queue81
Link : switchOut1@switch81 done@queue81
Link : gateWay@switch81 done@queue81

[queue51]
preparation : 00:00:03:000

[switch51]
source : LANswitch2.cdd

[queue61]
preparation : 00:00:03:000

[switch61]
source : LANswitch2.cdd

[queue71]
preparation : 00:00:03:000

[switch71]
source : LANswitch2.cdd

[queue81]
preparation : 00:00:03:00

[switch81]
source : LANswitch2.cdd

[LAN3]
components : workstation7 workstation8 workstation9 LANswitch_coupled3  
out : LANOut
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsReceived1 packetsReceived2 packetsReceived3
in : LANIn
Link : LANIn switchIn4@LANswitch_coupled3
Link : gateWAy@LANswitch_coupled3 LANOut
Link : packetsGenerated@workstation7 packetsGenerated1
Link : packetsGenerated@workstation8 packetsGenerated2
Link : packetsGenerated@workstation9 packetsGenerated3
Link : packetsReceived@workstation7 packetsReceived1
Link : packetsReceived@workstation8 packetsReceived2
Link : packetsReceived@workstation9 packetsReceived3
Link : packetOut@workstation7 switchIn1@LANswitch_coupled3
Link : packetOut@workstation8 switchIn2@LANswitch_coupled3
Link : packetOut@workstation9 switchIn3@LANswitch_coupled3
Link : switchOut1@LANswitch_coupled3 packetIn@workstation7
Link : switchOut2@LANswitch_coupled3 packetIn@workstation8
Link : switchOut3@LANswitch_coupled3 packetIn@workstation9


[workstation7]
components : source7@ggad sink7@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source7 packetOut
Link : packetsGenerated@source7 packetsGenerated
Link : packetsReceived@sink7 packetsReceived
Link : packetIn packetIn@sink7

[source7]
source : source7.cdd

[sink7]
source : sink7.cdd

[workstation8]
components : source8@ggad sink8@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source8 packetOut
Link : packetsGenerated@source8 packetsGenerated
Link : packetsReceived@sink8 packetsReceived
Link : packetIn packetIn@sink8

[source8]
source : source8.cdd

[sink8]
source : sink8.cdd

[workstation9]
components : source9@ggad sink9@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetOut@source9 packetOut
Link : packetsGenerated@source9 packetsGenerated
Link : packetsReceived@sink9 packetsReceived
Link : packetIn packetIn@sink9

[source9]
source : source9.cdd

[sink9]
source : sink9.cdd


[LANswitch_coupled3]
components : queue91@Queue switch91@ggad queue101@Queue switch101@ggad queue111@Queue switch111@ggad queue121@Queue switch121@ggad 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn1 in@queue91
Link : out@queue91 switchIn@switch91
Link : switchOut3@switch91 switchOut3
Link : switchOut2@switch91 switchOut2
Link : switchOut1@switch91 switchOut1
Link : gateWay@switch91 gateWay
Link : switchOut3@switch91 done@queue91
Link : switchOut2@switch91 done@queue91
Link : switchOut1@switch91 done@queue91
Link : gateWay@switch91 done@queue91
Link : switchIn2 in@queue101
Link : switchIn3 in@queue111
Link : switchIn4 in@queue121
Link : out@queue101 switchIn@switch101
Link : out@queue111 switchIn@switch111
Link : out@queue121 switchIn@switch121
Link : switchOut3@switch101 switchOut3
Link : switchOut2@switch101 switchOut2
Link : switchOut1@switch101 switchOut1
Link : gateWay@switch101 gateWay
Link : switchOut3@switch101 done@queue101
Link : switchOut2@switch101 done@queue101
Link : switchOut1@switch101 done@queue101
Link : gateWay@switch101 done@queue101
Link : switchOut3@switch111 switchOut3
Link : switchOut2@switch111 switchOut2
Link : switchOut1@switch111 switchOut1
Link : gateWay@switch111 gateWay
Link : switchOut3@switch111 done@queue111
Link : switchOut2@switch111 done@queue111
Link : switchOut1@switch111 done@queue111
Link : gateWay@switch111 done@queue111
Link : switchOut3@switch121 switchOut3
Link : switchOut2@switch121 switchOut2
Link : switchOut1@switch121 switchOut1
Link : gateWay@switch121 gateWay
Link : switchOut3@switch121 done@queue121
Link : switchOut2@switch121 done@queue121
Link : switchOut1@switch121 done@queue121
Link : gateWay@switch121 done@queue121

[queue91]
preparation : 00:00:03:000

[switch91]
source : LANswitch3.cdd

[queue101]
preparation : 00:00:03:000

[switch101]
source : LANswitch3.cdd

[queue111]
preparation : 00:00:03:000

[switch111]
source : LANswitch3.cdd

[queue121]
preparation : 00:00:03:00

[switch121]
source : LANswitch3.cdd

