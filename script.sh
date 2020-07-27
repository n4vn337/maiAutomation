#!/bin/bash


read -p 'IP Addr: ' ip

#scipt on same page
figlet n4vn337
echo "[+] Creating Directories and redirecting to output"
mkdir -p ~/Desktop/results/$ip && cd ~/Desktop/results/$ip && mkdir nmap gobuster nikto
echo "Thank You For Downloading This Tool!"
# open tabs for each operation
gnome-terminal --tab -- bash -ic "cd nmap; figlet n4vn337; echo '[+] Starting nmap SCAN'; nmap -sC -sV -Pn -oA initial $ip; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd nikto; figlet n4vn337; echo '[+] Starting nikto SCAN'; nikto -h http://$ip -o nikto.txt; echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd gobuster; figlet n4vn337;echo [+] Starting gobuster SCAN; gobuster dir -e -u http://$ip -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 -x php,txt,html -o gobuster.txt;echo 'Thank You For Using This Tool!'; exec bash;"
gnome-terminal --tab -- bash -ic "cd ~; figlet n4vn337; echo [+] Continue your job here; Thank You for using this tool; exec bash;"
