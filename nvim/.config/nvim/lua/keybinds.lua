local map = vim.api.nvim_set_keymap
local opts = {}

-- ESC Sucks
map('i', 'jk', '<esc>', {})

-- Keep it centered
map('n', 'n', 'nzzzv', {})
map('n', 'N', 'Nzzzv', {})
map('n', 'J', 'mzJ`z', {})

-- Fix copying + pasting
map('n', 'Y', 'y$', {})
-- Harpoon
map('n', '<leader>af', '<cmd>lua require("harpoon.mark").add_file()<cr>', opts)
map('n', '<leader>qm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
map('n', '<leader>fj', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', opts)
map('n', '<leader>fk', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', opts)
map('n', '<leader>fl', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', opts)
map('n', '<leader>f;', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', opts)

-- Moving Text
map('v', 'J', ":m '>+1<cr>gv=gv", opts)
map('v', 'K', ":m '<-2<cr>gv=gv", opts)
map('i', '<C-j>', '<esc>:m .+1<cr>==', opts)
map('i', '<C-k>', '<esc>:m .-2<cr>==', opts)
map('n', '<leader>j', ':m .+1<cr>==', opts)
map('n', '<leader>k', ':m .-2<cr>==', opts)

-- Edit the Vim files
map('n', '<leader>vim', ':lua require("config.telescope").search_vimfiles()<cr>', opts)
map('n', '<leader>dot', ':lua require("config.telescope").search_dotfiles()<cr>', opts)

-- Todos
map('n', '<leader>to', ':lua require("config.telescope").search_todo()<cr>', opts)
map('n', '<leader>tc', ':lua require("scripts.todo").create_todo()<cr>', opts)

-- Lsp nav
map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
map('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
map('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
map('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
map('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
map('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
map('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
map('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})




