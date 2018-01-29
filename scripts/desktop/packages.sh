#!/bin/bash
sudo apt-get update
#libcurl3 for google-chrome
#gir1.2-gtop-2.0 for Multi-Core System Monitor 1.5
#dconf-cli for keyboard shortcuts
packages=(libcurl3 build-essential htop mc git gitk git-gui virtualbox vim gedit dropbox \
	nemo-dropbox gir1.2-gtop-2.0 dconf-cli fonts-liberation curl sysv-rc-conf)

echo installing packages ${packages[*]}
sudo apt-get install -y ${packages[*]}