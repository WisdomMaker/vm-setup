#!/bin/bash

wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh -O ~/.git-prompt.sh
chmod a+x ~/.git-prompt.sh

echo "" >> ~/.bashrc
echo "source ~/.git-prompt.sh" >> ~/.bashrc
echo "export PS1='\\[\\033[1;32m\\]\\u\\[\\033[00m\\]:\\[\\033[1;34m\\]\\w\\[\\033[1;31m\\]\$(__git_ps1 \"(%s)\")\\[\\033[00m\\] \\$ '" >> ~/.bashrc

