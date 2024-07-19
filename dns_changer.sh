#!/bin/bash

name="nameserver"


declare -a DNSs=(
[1]="$name 8.8.8.8
$name 8.8.4.4"
[2]="$name 1.1.1.1
$name 1.0.0.1"
[3]="$name 10.202.10.202
$name 10.202.10.102"
[4]="$name 178.22.122.100
$name 185.51.200.2"
[5]="$name 45.90.28.190
$name 45.90.30.190"
[6]="$name 208.67.222.222
$name 208.67.220.220"
[7]="$name 9.9.9.9
$name 149.112.112.112"
)


sudo echo  "[1] Google
[2] CloudFlare
[3] 403 Online
[4] Shecan
[5] nextDNS
[6] openDNS
[7] Quad9
"

read -rp "Which one : " inp


dns=${DNSs[$inp]}

result=$(echo "$dns" | sudo tee /etc/resolv.conf)
