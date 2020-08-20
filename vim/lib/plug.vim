" Installs vim-plug if it hasn't already been installed, then runs PlugInstall.
function! lib#plug#Install()
  let l:autoload_plug_path = has('nvim') ?
      \ stdpath('data') . '/site/autoload/plug.vim' :
      \ '~/.vim/autoload/plug.vim'

  if empty(glob(autoload_plug_path))
    silent execute '!curl -fLo ' . autoload_plug_path . ' --create-dirs
        \ "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endfunction

" Returns the location where plugins should be downloaded.
function! lib#plug#GetDownloadDir()
  return has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged'
endfunction
