[Top]
components : workstation 
out : packetOut packetsReceived packetsGenerated 
in : packetIn 
Link : packetIn packetIn@workstation
Link : packetsGenerated@workstation packetsGenerated
Link : packetOut@workstation packetOut
Link : packetsReceived@workstation packetsReceived

[workstation]
components : source@ggad sink@ggad 
out : packetOut packetsGenerated packetsReceived 
in : packetIn 
Link : packetIn packetIn@sink
Link : packetsReceived@sink packetsReceived
Link : packetOut@source packetOut
Link : packetsGenerated@source packetsGenerated

[source]
source : source.cdd

[sink]
source : sink.cdd



