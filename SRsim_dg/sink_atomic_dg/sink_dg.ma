[Top]
components : sink@ggad 
out : packetsReceived 
in : packetIn 
Link : packetIn packetIn@sink
Link : packetsReceived@sink packetsReceived

[sink]
source : sink.cdd


