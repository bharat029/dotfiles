" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

" Set tab size = 2 spaces
set tabstop=2 					

" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline

" Highlight searches
set hlsearch
" Ignore case of searches
set ignorecase
" Highlight dynamically as pattern is typed
set incsearch
" Add the g flag to search/replace by default
set gdefault

" Enable mouse in all modes
set mouse=a

" Show the current mode
set showmode
" Show the filename in the window titlebar
set title
" Show the (partial) command as it’s being typed
set showcmd

" Turn off bell
set belloff=all

" Insert Mode
imap jk <esc>
imap <C-w> <esc>:q<CR>
imap <C-s> <esc>:w<CR>i

" Normal Mode
nmap <C-w> :q<CR>
nmap <C-s> :w<CR>
nmap ZZ :!q<CR>

" code to allow use of <C-s> binding
silent !stty -ixon
autocmd VimLeave * silent !stty ixon
