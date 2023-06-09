[Top]
components : WANswitch@ggad 
out : switchOut1 switchOut2 switchOut3 packetsDropped 
in : switchIn 
Link : switchIn switchIn@WANswitch
Link : switchOut3@WANswitch switchOut3
Link : switchOut2@WANswitch switchOut2
Link : switchOut1@WANswitch switchOut1
Link : packetsDropped@WANswitch packetsDropped

[WANswitch]
source : WANswitch.cdd


