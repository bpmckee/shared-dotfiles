" A leader on the home row.
let mapleader = ";"

" Home row escape.
inoremap jk <Esc>

" Navigate splits better.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Load plugin specific key-bindings.
call lib#source#Glob($DOTS_DIR . '/vim/plugins/**/*key-bindings.vim')
