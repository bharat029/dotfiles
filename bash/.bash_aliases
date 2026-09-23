#!/usr/bin/env bash

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias -- -='cd -'
# macOS mounts external drives under /Volumes. Uncomment and rename to match
# whatever your drives are actually called.
# alias cdext='cd /Volumes/YourDriveName'
alias gemini='npx https://github.com/google-gemini/gemini-cli'

# git
alias g='git'

# open bash dotfiles
alias bal='code ~/.bash_aliases'
alias brc='code ~/.bashrc'
alias bpmt='code ~/.bash_prompt'
alias bhp='code ~/.bash_helper'
alias bex='code ~/.bash_exports'
alias but='code ~/.bash_utils'
alias bpf='code ~/.bash_profile'

# homebrew (was: apt)
alias bi='brew install'
alias bic='brew install --cask'
alias bup='brew update && brew upgrade'
alias bs='brew search'
alias bl='brew list'
alias bcl='brew cleanup'
alias bsv='brew services list'
alias macver='sw_vers'

# cron
# macOS has crontab but prefers launchd. These still work for user crontabs.
alias cronl='crontab -l'
alias crone='crontab -e'

# backups
alias bkbash='rsync -av ~/.bash{rc,_aliases,_prompt,_helper,_exports} ~/backups/bash/'
alias bkvim='rsync -av ~/.vimrc ~/backups/vim/'
alias bkinp='rsync -av ~/.inputrc ~/backups/input/'
alias bkgit='rsync -av ~/.gitconfig ~/backups/git/'
alias bkup='. ~/utils/backup.sh >> ~/logs/backup.log'

# zip files
alias tzip='tar -czvf'
alias tunzip='tar -xzvf'

# python
alias py='python3'
alias pyv='python3 --version'
alias tb='tensorboard --logdir logs --load_fast true'

# uv (replaces conda)
alias uvi='uv init'
alias uva='uv add'
alias uvr='uv remove'
alias uvs='uv sync'
alias uvrun='uv run'
alias uvl='uv lock'
alias uvt='uv tree'
alias uvv='uv venv'
alias uvx='uv tool run'
alias uvti='uv tool install'
alias uvtl='uv tool list'
alias uvup='uv self update'
alias pi='uv pip install'
alias pl='uv pip list'
alias pyi='uv python install'
alias pyl='uv python list'
alias pyp='uv python pin'
alias act='source .venv/bin/activate'
alias deact='deactivate'

# c++
# On macOS g++ is clang++ in disguise. Works, but it is not GNU g++.
alias g++='g++ -std=c++17'

# miscellaneous
alias nl='nl -b a -w 1'
alias cls=clear
alias grep='grep --color'
alias ll='ls -alFG'
alias la='ls -AG'
alias l='ls -CFG'
alias path='echo -e ${PATH//:/\\n}'
alias duf='du -hd 0'
alias rm='rm -rf'
alias cp='cp -r'
alias psf='f() { ps aux | grep $1 | grep -v grep; }; f'

# macOS clipboard (was: xclip)
alias pbc='pbcopy'
alias pbp='pbpaste'
alias copy-code='pbcopy < ~/utils/btnClicker.js'

# macOS specific conveniences
alias o='open'
alias oo='open .'
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias flushdns='sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder'

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

# redis (was: sudo redis-server /etc/redis/redis.conf --daemonize yes)
alias redis-start='brew services start redis'
alias redis-stop='brew services stop redis'

# postgres (was: sudo service postgresql start)
# Adjust the version number to match what you install.
alias pg-start='brew services start postgresql@17'
alias pg-stop='brew services stop postgresql@17'

# trading-system
alias trade='py ~/quant-investing/strategies/trend-following/trading-system/trading.py'
