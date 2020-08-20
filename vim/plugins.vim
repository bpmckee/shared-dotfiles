call lib#plug#Install()

call plug#begin(lib#plug#GetDownloadDir())
call lib#source#Glob($DOTS_DIR . '/vim/plugins/**/*plug.vim')
call plug#end()

call lib#source#FileIfExists($DOTS_DIR . '/vim/plugins.local.vim')

call lib#source#Glob($DOTS_DIR . '/vim/plugins/**/*settings.vim')
