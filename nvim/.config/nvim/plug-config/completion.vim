lua require'lspconfig'.tsserver.setup{on_attach=require'completion'.on_attach}
autocmd BufEnter * lua require'completion'.on_attach()
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect

" Avoid showing message extra message when using completion
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']

set shortmess+=c
