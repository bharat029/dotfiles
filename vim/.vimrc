:set tabstop=2 					

" Insert Mode
imap jk <esc>
imap <C-w> <esc>:q<CR>
imap <C-s> <esc>:w<CR>i

" Normal Mode
nmap <C-w> :q<CR>
nmap <C-s> :w<CR>
nmap zz :!q<CR>

" code to allow use of <C-s> binding
silent !stty -ixon
autocmd VimLeave * silent !stty ixon

set belloff=all

