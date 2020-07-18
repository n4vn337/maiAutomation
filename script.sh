#!/bin/bash

# read -p 'IP Addr: ' ip

# dirsearch.py -e php,txt,zip -u https://$ip -w db/dicc.txt -t 20
# nmap -A -T4 -oA nmap $ip

# open tabs for each
echo 'a script by n4vn337'
echo 'visit at https://www.n4vn337.xyz/'

# export TITLE_DEFAULT='hello'
gnome-terminal --tab -- bash -ic "figlet n4vn337;echo [+] Starting nmap SCAN;pwd; pwd; exec bash;"
gnome-terminal --tab -- bash -ic "figlet n4vn337;echo [+] Starting dirsearch SCAN; ls; exec bash;"
gnome-terminal --tab -- bash -ic "figlet n4vn337;echo [+] Continue your job here; echo hello; exec bash;"
