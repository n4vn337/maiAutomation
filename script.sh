#!/bin/bash


# read -p 'IP Addr: ' ip
#scipt on same page
figlet n4vn337
echo "[+] Creating Directories and redirecting to output"
mkdir -p ~/Desktop/results/$1 && cd ~/Desktop/results/$1 && mkdir nmap gobuster nikto
# echo '[+] Opening the ip On Firefox' ;firefox $1 &
echo '[+] Continue your job here'
echo "Thank You For Using This Tool!"
# open tabs for each operation

gnome-terminal --tab --title="nmap scan" -- bash -ic "cd nmap; figlet n4vn337; echo '[+] Starting nmap SCAN'; echo '[+] execution code: nmap -sC -sV -Pn -oA initial $1'; nmap -sC -sV -Pn -oA initial $1; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab --title="nikto scan" -- bash -ic "cd nikto; figlet n4vn337; echo '[+] Starting nikto SCAN'; echo '[+] execution code: nikto -h http://$1 -o nikto.txt'; nikto -h http://$1 -o nikto.txt; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab --title="gobuster scan" -- bash -ic "cd gobuster; figlet n4vn337;echo [+] Starting gobuster SCAN;echo '[+] execution code: gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt';gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt;echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab --title="Firefox" -- bash -ic "figlet n4vn337; echo '[+] Opening the ip On Firefox'; firefox $1 &; Thank You for using this tool; exit; exec bash;"

 firefox $1 &
