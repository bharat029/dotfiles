# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd'
alias cdc='cd /mnt/c'
alias cdd='cd /mnt/d'
alias cde='cd /mnt/e'
alias cdf='cd /mnt/f'

# git aliases
alias ggraph='git log --graph --oneline --all'

# open bash dotfiles
alias bal='code ~/.bash_aliases'
alias brc='code ~/.bashrc'
alias bpmt='code ~/.bash_prompt'

# ubuntu specific
alias update='sudo apt update && sudo apt upgrade'
alias ubuntuver='lsb_release -a'

# miscellaneous
alias nl='nl -b a -w 1'
alias cls=clear
alias grep='grep --color'

# cron jobs
alias cronl='crontab -l'
alias crons='sudo cron'
alias crone='crontab -e'

# backups
alias bkbash='rsync -av ~/.{bashrc,bash_aliases,bash_prompt} ~/backups/bash/'
alias bkvim='rsync -av ~/.vimrc ~/backups/vim/'
alias bkconda='rsync -av ~/.condarc ~/backups/conda/'
alias bkinp='rsync -av ~/.inputrc ~/backups/input/'

# zip files
alias tzip='tar -czvf'
alias tunzip='tar -xzvf'

# programming languages
# python
alias py='python3'
alias pip='pip3'

# conda 
alias ca='conda activate'
alias ci='conda install'
alias cup='conda update'

# c++
alias g='g++ -std=c++17'
