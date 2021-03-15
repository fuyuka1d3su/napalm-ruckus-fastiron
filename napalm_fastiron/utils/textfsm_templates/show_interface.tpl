Value Port (\S+)
Value Link (up|down|disabled|empty|ERR-DISABLED)
Value Uptime (.*)
Value Mac (\S+)
Value Speed (\S+)
Value PortState (\S+)
Value Name (.*)
Value MTU (\d+)

Start
  ^${Port} is ${Link}
  ^\s+Port (up|down) for ${Uptime}
  ^\s+Hardware is \S+, address is ${Mac}
  ^\s+Configured speed ${Speed},
  ^.*port state is ${PortState}
  ^\s+Port name is ${Name}
  ^\s+.*MTU ${MTU} -> Record
