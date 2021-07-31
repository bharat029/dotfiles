:set tabstop=2
imap jk <esc>
nmap <C-w> :q<CR>
imap <C-w> <esc>:q<CR>
nmap <C-s> :w<CR>
imap <C-s> <esc>:w<CR>
nmap zz :!q<CR>

silent !stty -ixon
autocmd VimLeave * silent !stty ixon
