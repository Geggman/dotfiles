inoremap jk <esc>
let mapleader = ' '

" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gf <cmd>Telescope git_files<cr>

" Keep the code centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Fix Y
nnoremap Y y$

" Moving text
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
inoremap <C-j> <esc>:m .+1<CR>==
inoremap <C-k> <esc>:m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==
nnoremap <leader>k :m .-2<CR>==


" Harpoon
nnoremap <leader>af <cmd>lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>qm <cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>gj <cmd>lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>gk <cmd>lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>gl <cmd>lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>g; <cmd>lua require("harpoon.ui").nav_file(4)<cr>
