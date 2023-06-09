[Top]
components : LAN
out : LANOut
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsReceived1 packetsReceived2 packetsReceived3
in : LANIn
Link : LANIn LANIn@LAN
Link : LANOut@LAN LANOut
Link : packetsGenerated1@LAN packetsGenerated1
Link : packetsGenerated2@LAN packetsGenerated2
Link : packetsGenerated3@LAN packetsGenerated3
Link : packetsReceived1@LAN packetsReceived1
Link : packetsReceived2@LAN packetsReceived2
Link : packetsReceived3@LAN packetsReceived3

[LAN]
components : workstation1 workstation2 workstation3 LANswitch_coupled  
out : LANOut
out : packetsGenerated1 packetsGenerated2 packetsGenerated3
out : packetsReceived1 packetsReceived2 packetsReceived3
in : LANIn
Link : LANIn switchIn4@LANswitch_coupled
Link : gateWAy@LANswitch_coupled LANOut
Link : packetsGenerated@workstation1 packetsGenerated1
Link : packetsGenerated@workstation2 packetsGenerated2
Link : packetsGenerated@workstation3 packetsGenerated3
Link : packetsReceived@workstation1 packetsReceived1
Link : packetsReceived@workstation2 packetsReceived2
Link : packetsReceived@workstation3 packetsReceived3
Link : packetOut@workstation1 switchIn1@LANswitch_coupled
Link : packetOut@workstation2 switchIn2@LANswitch_coupled
Link : packetOut@workstation3 switchIn3@LANswitch_coupled
Link : switchOut1@LANswitch_coupled packetIn@workstation1
Link : switchOut2@LANswitch_coupled packetIn@workstation2
Link : switchOut3@LANswitch_coupled packetIn@workstation3


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


[LANswitch_coupled]
components : queue1@Queue switch1@ggad queue2@Queue switch2@ggad queue3@Queue switch3@ggad queue4@Queue switch4@ggad 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn1 switchIn2 switchIn3 switchIn4 
Link : switchIn1 in@queue1
Link : out@queue1 switchIn@switch1
Link : switchOut3@switch1 switchOut3
Link : switchOut2@switch1 switchOut2
Link : switchOut1@switch1 switchOut1
Link : gateWay@switch1 gateWay
Link : switchOut3@switch1 done@queue1
Link : switchOut2@switch1 done@queue1
Link : switchOut1@switch1 done@queue1
Link : gateWay@switch1 done@queue1
Link : switchIn2 in@queue2
Link : switchIn3 in@queue3
Link : switchIn4 in@queue4
Link : out@queue2 switchIn@switch2
Link : out@queue3 switchIn@switch3
Link : out@queue4 switchIn@switch4
Link : switchOut3@switch2 switchOut3
Link : switchOut2@switch2 switchOut2
Link : switchOut1@switch2 switchOut1
Link : gateWay@switch2 gateWay
Link : switchOut3@switch2 done@queue2
Link : switchOut2@switch2 done@queue2
Link : switchOut1@switch2 done@queue2
Link : gateWay@switch2 done@queue2
Link : switchOut3@switch3 switchOut3
Link : switchOut2@switch3 switchOut2
Link : switchOut1@switch3 switchOut1
Link : gateWay@switch3 gateWay
Link : switchOut3@switch3 done@queue3
Link : switchOut2@switch3 done@queue3
Link : switchOut1@switch3 done@queue3
Link : gateWay@switch3 done@queue3
Link : switchOut3@switch4 switchOut3
Link : switchOut2@switch4 switchOut2
Link : switchOut1@switch4 switchOut1
Link : gateWay@switch4 gateWay
Link : switchOut3@switch4 done@queue4
Link : switchOut2@switch4 done@queue4
Link : switchOut1@switch4 done@queue4
Link : gateWay@switch4 done@queue4

[queue1]
preparation : 00:00:03:000

[switch1]
source : LANswitch.cdd

[queue2]
preparation : 00:00:03:000

[switch2]
source : LANswitch.cdd

[queue3]
preparation : 00:00:03:000

[switch3]
source : LANswitch.cdd

[queue4]
preparation : 00:00:03:00

[switch4]
source : LANswitch.cdd

