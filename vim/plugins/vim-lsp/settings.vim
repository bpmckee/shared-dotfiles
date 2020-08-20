" ======= GLOBAL SETTINGS =======
let g:lsp_signs_enabled = 1                 " Show diagnostic info in the gutter
" let g:lsp_signs_error = {'text': '✗'}

let g:lsp_highlight_references_enabled = 1  " Highlight references to the symbol under the cursor.

let g:lsp_virtual_text_enabled = 0          " Disable virtual inline text, it's annoying.
let g:lsp_diagnostics_float_cursor = 1      " Show the diagnostic info in a floating window.
" let g:lsp_diagnostics_echo_cursor = 1       " Show the diagnostic info in the status bar.

" ======= DEBUG IT =======
" let g:lsp_log_verbose = 1
" let g:lsp_log_file = expand('~/vim-lsp.log')
" let g:asyncomplete_log_file = expand('~/asyncomplete.log')


" ======= LSP BUFFER SETTINGS =======
" Only add some settings and keybindings when a languageserver is active.
augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
  setlocal signcolumn=yes

  nmap <buffer> K <plug>(lsp-hover)
endfunction

" ======= LANGUAGE SERVERS ======
"
" DART
au User lsp_setup call lsp#register_server({
      \   'name': 'DartLSP',
      \   'cmd': {server_info->[
      \     'dart',
      \     '/opt/dart-sdk/bin/snapshots/analysis_server.dart.snapshot',
      \     '--lsp'
      \   ]},
      \   'whitelist': ['dart'],
      \ })
