Value Filldown Port (\S+)
Value RemoteChassisId (\S+)
Value RemotePortId (\S+)
Value RemotePortDescription (.*)
Value Required RemoteSystemName (\S+)
Value RemoteSystemDescription (.*)
Value RemoteSystemCapab (.*)
Value RemoteSystemCapabEnabled (.*)

Start
  ^Local port: ${Port}
  ^\s*Neighbor: ${RemoteChassisId}
  ^\s*\+ Chassis ID \(.*\): ${RemoteSystemName}
  ^\s*\+ Port ID \(.*\): ${RemotePortId}
  ^\s*\+ System name: ${RemoteSystemName}
  ^\s*\+ Port description\s*:\s*${RemotePortDescription}
  ^\s*\+ System description\s*:\s*${RemoteSystemDescription}
  ^\s*\+ System capabilities\s*:\s*${RemoteSystemCapab}
  ^$$ -> Record
  ^\s*Enabled capabilities\s*:\s*${RemoteSystemCapabEnabled}, -> Record