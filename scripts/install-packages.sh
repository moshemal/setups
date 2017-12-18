#!/bin/bash
sudo apt-get update
#libcurl3 for google-chrome
#gir1.2-gtop-2.0 for Multi-Core System Monitor 1.5
#dconf-cli for keyboard shortcuts
packages=(libcurl3 build-essential htop mc git gitk git-gui virtualbox vim gedit dropbox \
	nemo-dropbox gir1.2-gtop-2.0 dconf-cli fonts-liberation curl sysv-rc-conf)

echo installing packages ${packages[*]}
sudo apt-get install -y ${packages[*]}

cd /tmp
echo downloading google-chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo installing google-chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb

wget https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora/firefox-49.0a2.en-US.linux-x86_64.tar.bz2
firefox=`ls | grep firefox`
sudo tar -xf ${firefox} -C /opt

echo downloading sublimetext-3114
wget https://download.sublimetext.com/sublime-text_build-3114_amd64.deb
echo installinging sublimetext
sudo -i dpkg sublime-text_build-3114_amd64.deb

######################################################################
#install npm 
######################################################################
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs


######################################################################
#Provide the possibility to Install npm packages globally without sudo 
######################################################################
echo "setup for installing npm packages globally without sudo"
#Create a directory for globally packages
prefix=${HOME}/.npm-packages

#Indicate to npm where to store globally installed packages
echo "prefix=${HOME}/.npm-packages" >> ~/.npmrc

#Ensure npm will find installed binaries and man pages
echo 'NPM_PACKAGES="${HOME}/.npm-packages"' >> ~/.bashrc
echo 'PATH="$NPM_PACKAGES/bin:$PATH"' >> ~/.bashrc
echo '# Unset manpath so we can inherit from /etc/manpath via the `manpath` command' >> ~/.bashrc
echo 'unset MANPATH # delete if you already modified MANPATH elsewhere in your config' >> ~/.bashrc
echo 'export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"' >> ~/.bashrc
source ~/.bashrc


echo "downloading Webstorm-2016.2"
wget https://download-cf.jetbrains.com/webstorm/WebStorm-2017.1.4.tar.gz

echo "installing Webstorm-2016.2 in /opt"
sudo tar xfz WebStorm-*.tar.gz -C /opt
webstorm=`ls /opt/ | grep WebStorm`
/opt/${webstorm}/bin/webstorm.sh
