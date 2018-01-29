#!/bin/bash
cd /tmp
echo downloading google-chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo installing google-chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb