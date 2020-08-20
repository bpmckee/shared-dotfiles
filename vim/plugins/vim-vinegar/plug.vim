" Split file explorer that extends netrw.
"
" Important mappings:
"    nmap - --> Open the parent directory of the current file.
"    nmap ~ --> Open $HOME
"    cmap C-r C-f --> Insert path to the file under the cursor
"    netrw . --> Start a command line with the path to the file.
"    netrw ! --> Same as . but use a :!
"    netrw y. --> Yank the current line as absolute paths
Plug 'tpope/vim-vinegar'
