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

# git
alias g='git'

# open bash dotfiles
alias bal='code ~/.bash_aliases'
alias brc='code ~/.bashrc'
alias bpmt='code ~/.bash_prompt'
alias bhp='code ~/.bash_helper'
alias bex='code ~/.bash_exports'
alias but='code ~/.bash_utils'

# ubuntu specific
alias apti='sudo apt install'
alias aptup='sudo apt update && sudo apt upgrade'
alias linuxver='lsb_release -a'

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
alias pyv='python3 --version' 
alias pip='pip3'
alias pi='pip install'
alias tb='tensorboard --logdir logs --load_fast true'

# conda 
alias ca='conda activate'
alias cda='conda deactivate'
alias ci='conda install'
alias cu='conda update'
alias cl='conda list'
alias cle='conda env list'
alias cc='conda create -n'
alias cr='conda remove --all -n'
alias crn='conda rename -n'
alias cs='conda search'
alias cun='conda uninstall'
alias cv='conda --version'
alias cex='conda env export'

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
alias wsl=wsl.exe
alias rmd='rm -rf'
alias cp='cp -r'

# angular
alias ngc='f() { ng g c $1 -m $2 --skip-tests $3; }; f'
alias ngcp='f() { ng g c $1 -m $2 -p $3 --skip-tests $4; }; f'
alias ngm='f() { ng g m $1 --route $1 -m $2 --skip-tests $3; }; f'

# react
alias cra='npx create-react-app'
alias crats='npx create-react-app --template typescript'

# code locations
alias cutils='code ~/utils/'

# npm
alias ni='npm install'
alias nr='npm run'
alias ns='npm start'
alias nd='npm run dev'

# dendron
alias dex='npx dendron publish export'
alias di='npx dendron publish init'
alias dd='npx dendron publish dev'
alias ds='serve ../.next/out/'
