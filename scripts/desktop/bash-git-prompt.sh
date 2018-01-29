#!/bin/bash
#############################################################################
# custom git prompt cloned from https://github.com/magicmonty/bash-git-prompt
#############################################################################
git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
cat bash-git-prompt.bashrc >> ~/.bashrc
echo "alias g='git'" >> ~/.bash_aliases