[Top]
components : LANswitch@ggad 
out : switchOut1 switchOut2 switchOut3 gateWay 
in : switchIn 
Link : switchIn switchIn@LANswitch
Link : switchOut3@LANswitch switchOut3
Link : switchOut2@LANswitch switchOut2
Link : switchOut1@LANswitch switchOut1
Link : gateWay@LANswitch gateWay

[LANswitch]
source : LANswitch.cdd


