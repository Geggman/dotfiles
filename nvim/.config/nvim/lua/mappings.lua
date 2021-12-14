local keymap = vim.api.nvim_set_keymap
local opts = {}

-- ESC Sucks
keymap('i', 'jk', '<esc>', {})
keymap('v', 'jk', '<esc>', {})

-- Keep it centered
keymap('n', 'n', 'nzzzv', {})
keymap('n', 'N', 'Nzzzv', {})
keymap('n', 'J', 'mzJ`z', {})

-- Fix copying + pasting
keymap('n', 'Y', '"y$', {})

-- Harpoon
keymap('n', '<leader>af', '<cmd>lua require("harpoon.mark").add_file()<cr>', opts)
keymap('n', '<leader>qm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', opts)
keymap('n', '<leader>fj', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', opts)
keymap('n', '<leader>fk', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', opts)
keymap('n', '<leader>fl', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', opts)
keymap('n', '<leader>f;', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', opts)

-- Moving Text
keymap('v', 'J', ":m '>+1<cr>gv=gv", opts)
keymap('v', 'K', ":m '<-2<cr>gv=gv", opts)
keymap('i', '<C-j>', '<esc>:m .+1<cr>==', opts)
keymap('i', '<C-k>', '<esc>:m .-2<cr>==', opts)
keymap('n', '<leader>j', ':m .+1<cr>==', opts)
keymap('n', '<leader>k', ':m .-2<cr>==', opts)

-- Edit the Vim files
keymap('n', '<leader>vim', ':lua require("plug-config.telescope").search_vimfiles()<cr>', opts)
keymap('n', '<leader>dot', ':lua require("plug-config.telescope").search_dotfiles()<cr>', opts)

-- Todos
keymap('n', '<leader>to', ':lua require("plug-config.telescope").search_todo()<cr>', opts)
keymap('n', '<leader>tc', ':lua require("scripts.todo").create_todo()<cr>', opts)

-- Lsp nav
keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', {})




