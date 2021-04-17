#!/bin/bash
screen -ls | grep slowdns | cut -d. -f1 | awk '{print $1}' | xargs kill
cd /root/dnstt/dnstt-server
screen -dmS slowdns ./dnstt-server -udp :5300  -privkey-file server.key ns.seudominio.xyz 127.0.0.1:22
