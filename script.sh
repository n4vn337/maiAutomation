#!/bin/bash

#scipt on same page
figlet maiAutomation; echo 'by n4vn337'
echo "[+] Creating Directories and redirecting to output"
mkdir -p ~/Desktop/results/$1 && cd ~/Desktop/results/$1 && mkdir nmap gobuster nikto
echo '[+] Continue your job here'
echo "Thank You For Using This Tool!"

# open tab-terminals for each operation
#  nmap
gnome-terminal --tab --title="nmap scan" -- bash -ic "cd nmap; figlet maiAutomation; echo 'by n4vn337'; echo '[+] Starting nmap SCAN'; echo '[+] execution code: nmap -sC -sV -Pn -oA initial $1'; nmap -sC -sV -Pn -oA initial $1; echo 'Thank You For Using This Tool!'; exec bash;"
# nikto
gnome-terminal --tab --title="nikto scan" -- bash -ic "cd nikto; figlet maiAutomation; echo 'by n4vn337'; echo '[+] Starting nikto SCAN'; echo '[+] execution code: nikto -h http://$1 -o nikto.txt'; nikto -h http://$1 -o nikto.txt; echo 'Thank You For Using This Tool!'; exec bash;"
# goobuster with wordlist medium for better results
gnome-terminal --tab --title="gobuster scan" -- bash -ic "cd gobuster; figlet maiAutomation; echo 'by n4vn337';echo [+] Starting gobuster SCAN;echo '[+] execution code: gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt';gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt;echo 'Thank You For Using This Tool!'; exec bash;"

# opening firefox
firefox $1 &
