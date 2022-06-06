#!/bin/bash
shopt -s expand_aliases
. ~/.bash_aliases

# make dirs
for fname in ~/{dotfiles,dotfiles/{bash,conda,vim,git,input}}; do
  if [ ! -d "$fname" ]; then
    mkdir -p "$fname"
  fi
done 
unset fname

# bash files
rsync -rav ~/.bash{rc,_{aliases,prompt,helper,exports,utils}} ~/dotfiles/bash/

# conda
rsync -rav ~/.condarc ~/dotfiles/conda/

# input
rsync -rav ~/.inputrc ~/dotfiles/imput/

# vim
rsync -rav ~/.vimrc ~/dotfiles/vim/

# gitconfig
rsync -rav ~/.gitconfig ~/dotfiles/git/

cd ~/dotfiles
g cm -m "Backuped up ON  \$(date)"
g ph
-