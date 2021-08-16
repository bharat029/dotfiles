#!/bin/bash

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias -- -='cd -'
alias cdc='cd /mnt/c'
alias cdd='cd /mnt/d'
alias cde='cd /mnt/e'
alias cdf='cd /mnt/f'
alias cddw='cd /mnt/c/Users/vbhar/Downloads/'

# git
alias g='git'

# open bash dotfiles
alias bal='code ~/.bash_aliases'
alias brc='code ~/.bashrc'
alias bpmt='code ~/.bash_prompt'
alias bhp='code ~/.bash_helper'
alias bex='code ~/.bash_exports'

# ubuntu specific
alias update='sudo apt update && sudo apt upgrade'
alias ubuntuver='lsb_release -a'

# cron jobs
alias cronst='service cron status'
alias cronl='crontab -l'
alias crons='sudo cron'
alias crone='crontab -e'

# backups
alias bkbash='rsync -av ~/.bash{rc,_aliases,_prompt,_helper,_exports} ~/backups/bash/'
alias bkvim='rsync -av ~/.vimrc ~/backups/vim/'
alias bkconda='rsync -av ~/.condarc ~/backups/conda/'
alias bkinp='rsync -av ~/.inputrc ~/backups/input/'
alias bkgit='rsync -av ~/.gitconfig ~/backups/git/'
alias bkup='. ~/scripts/backup.sh >> ~/logs/backup.log'

# zip files
alias tzip='tar -czvf'
alias tunzip='tar -xzvf'

# python
alias py='python3'
alias pip='pip3'

# conda 
alias ca='conda activate'
alias ci='conda install'
alias cu='conda update'
alias cn='conda create -n'
alias cr='conda remove --all -n'

# c++
alias g++='g++ -std=c++17'

# miscellaneous
alias nl='nl -b a -w 1'
alias cls=clear
alias grep='grep --color'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias path='echo -e ${PATH//:/\\n}'
