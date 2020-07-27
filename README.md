# maiAutomation
Scans included
  1. nmap with -sC -sV and -oA flags
  2. nikto /- simple host scan
  3. dirsearch for directory busting
 
 prerequisites
  1. dirsearch
  install by following command: git clone https://github.com/maurosoria/dirsearch.git	
																sudo mv dirsearch /opt
																sudo ln -s /opt/dirsearch/dirsearch.py /usr/bin/dirsearch
  2. gnome-terminal
  install by following command: sudo apt-get install gnome-terminal
	
	Now we are good to go
	
	Usage
	git clone https://github.com/n4vn337/maiAutomation
  cd maiAutomation
  chmod +x script.sh
  ./script.sh
  
  entere the ip when asked for and everthing automates
