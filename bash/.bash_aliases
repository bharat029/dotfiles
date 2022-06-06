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
alias cd-dw='cd /mnt/c/Users/vbhar/Downloads/'
alias cd-ln='cd /mnt/f/Anime/light\ novels/'

# git
alias g='git'

# open bash dotfiles
alias bal='code ~/.bash_aliases'
alias brc='code ~/.bashrc'
alias bpmt='code ~/.bash_prompt'
alias bhp='code ~/.bash_helper'
alias bex='code ~/.bash_exports'

# ubuntu specific
alias apti='sudo apt install'
alias aptup='sudo apt update && sudo apt upgrade'
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
alias bkup='. ~/utils/backup.sh >> ~/logs/backup.log'

# zip files
alias tzip='tar -czvf'
alias tunzip='tar -xzvf'

# python
alias py='python3'
alias pip='pip3'
alias pipi='pip install'

# conda 
alias ca='conda activate'
alias cda='conda deactivate'
alias ci='conda install'
alias cu='conda update'
alias cl='conda list'
alias cle='conda env list'
alias cn='conda create -n'
alias cr='conda remove --all -n'
alias cun='conda uninstall'

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
alias duf='du -hd 0'

# angular
alias ngc='f() { ng g c $1 -m $2 --skip-tests $3; }; f'
alias ngcp='f() { ng g c $1 -m $2 -p $3 --skip-tests $4; }; f'
alias ngm='f() { ng g m $1 --route $1 -m $2 --skip-tests $3; }; f'

# react
alias cra='npx create-react-app'
alias crats='npx create-react-app --template typescript'

# code locations
alias cutils='code ~/utils/'