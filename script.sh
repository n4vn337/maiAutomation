#!/bin/bash


# read -p 'IP Addr: ' ip
#scipt on same page
figlet n4vn337
echo "[+] Creating Directories and redirecting to output"
mkdir -p ~/Desktop/results/$1 && cd ~/Desktop/results/$1 && mkdir nmap gobuster nikto
echo "Thank You For Downloading This Tool!"
# open tabs for each operation
gnome-terminal --tab -- bash -ic "cd nmap; figlet n4vn337; echo '[+] Starting nmap SCAN'; echo '[+] execution code: nmap -sC -sV -Pn -oA initial $1'; nmap -sC -sV -Pn -oA initial $1; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd nikto; figlet n4vn337; echo '[+] Starting nikto SCAN'; echo '[+] execution code: nikto -h http://$1 -o nikto.txt'; nikto -h http://$1 -o nikto.txt; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd gobuster; figlet n4vn337;echo [+] Starting gobuster SCAN;echo '[+] execution code: gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt';gobuster dir -e -u http://$1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt;echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd ~; figlet n4vn337; echo [+] Continue your job here; Thank You for using this tool; exec bash;"
#exit
