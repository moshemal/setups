# Setups

## packages
```bash
sudo apt-get update
#libcurl3 for google-chrome
#gir1.2-gtop-2.0 for Multi-Core System Monitor 1.5
#dconf-cli for keyboard shortcuts
packages=(libcurl3 build-essential htop mc git gitk git-gui virtualbox vim gedit dropbox nemo-dropbox gir1.2-gtop-2.0 dconf-cli fonts-liberation curl sysv-rc-conf)

sudo apt-get install -y ${packages[*]}
```

## vscode
https://code.visualstudio.com/docs/?dv=linux64_deb

## google chrome
```bash
cd /tmp
echo downloading google-chrome stable
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
echo installing google-chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

## sublime text
https://www.sublimetext.com/docs/3/linux_repositories.html
```bash
# Install the GPG key:
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -

# Select the channel to use:
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install sublime-text
```

## nvm
https://github.com/creationix/nvm#install-script
```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
```

## nodejs
```bash
nvm install --lts
nvm install v6.10.3
```

## bash git prompt
```bash
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cat bash-git-prompt.bashrc >> ~/.bashrc
cp .gitconfig ~/

echo "alias g='git'" >> .bash_aliases
```

## Webstorm
https://www.jetbrains.com/webstorm/download/download-thanks.html
