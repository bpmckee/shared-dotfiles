" ===== Netrw =====
let g:netrw_liststyle = 3 " Open in "tree" mode. "i" to toggle mode.
let g:netrw_banner = 0    " Remove banner. "I" to toggle.

" Per default, netrw leaves unmodified buffers open. This autocommand
" " deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" ===== Search =====
set incsearch   " Show where the search match is while you type.
set hlsearch    " Highlight search results.
set ignorecase  " Ignore case when typing.
set smartcase   " Don't ignore case if a capital letter was typed.

" ===== Indentation =====
set autoindent  " Copy indent from current line when starting a new line. 
set smartindent " Smartly set indent after things like a line ending in '{'.
set smarttab    " Use tabs for indentation & spaces everywhere else.

set tabstop=2     " Number of visual spaces per tab.
set softtabstop=2 " Number of spaces per tab wen editing.
set shiftwidth=2  " How many columns are indented when auto-indented. 
set expandtab     " Tabs are spaces.

filetype plugin on  " Enable loading plugin files for specific file types.
filetype indent on  " Use indent from specific file types if available.

set nowrap      " Don't wrap lines.
set linebreak   " Wrap lines at convenient points.

" ===== Scrolling =====

" ===== Swap Files =====
set noswapfile  " Reuse a buffer, don't create a swap file.
set nobackup    " Don't make a backup before overwriting a file.
set nowritebackup " Remove the backup after file was successfully written.

" ===== Gutter =====
set number          " Show line numbers.
set relativenumber  " Show relative line numbers.
set backspace=indent,eol,start  "Allow backspace in insert mode.

" ===== Bottom thing ====
set showmode        " Show what mode you're in at the bottom.
set showcmd         " Show incomplete commands at the bottom.

" ===== Colors =====
syntax on           " Turn on syntax highlighting.

set background=dark
" colorscheme wal
" colorscheme base16-billy
" colorscheme base16-billy3
colorscheme onehalfdark
set t_Co=256
set cursorline

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
