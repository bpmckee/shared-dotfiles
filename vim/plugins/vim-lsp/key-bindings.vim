noremap <silent> gt :LspTypeDefinition<cr>
noremap <silent> gd :LspDefinition<cr>
noremap <silent> gD :LspDeclaration<cr>
noremap <silent> gr :LspReferences<cr>
noremap <silent> gi :LspImplementation<cr>

noremap <silent> ge :LspNextError<cr>
noremap <silent> gE :LspPreviousError<cr>
noremap <silent> gw :LspNextWarning<cr>
noremap <silent> gW :LspPreviousWarning<cr>
noremap <silent> <C-n>  :LspNextReference<cr>
noremap <silent> <C-p>  :LspPreviousReference<cr>

noremap <silent> gR :LspRename<cr>
noremap <silent> ga :LspCodeAction<cr>
" noremap <silent> gK :LspHover<cr>

noremap <silent> gpD  :LspPeekDeclaration<cr>
noremap <silent> gpd  :LspPeekDefinition<cr>
noremap <silent> gpi  :LspPeekImplementation<cr>
noremap <silent> gpt  :LspPeekTypeDefinition<cr>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
