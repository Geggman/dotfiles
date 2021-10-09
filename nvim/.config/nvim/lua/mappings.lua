local keymap = vim.api.nvim_set_keymap

-- ESC Sucks
keymap('i', 'jk', '<esc>', {})
keymap('v', 'jk', '<esc>', {})

-- Keep it centered
keymap('n', 'n', 'nzzzv', {})
keymap('n', 'N', 'Nzzzv', {})
keymap('n', 'J', 'mzJ`z', {})

-- Fix Y
keymap('n', 'Y', 'y$', {})

-- Moving Text
keymap('v', 'J', ":m '>+1<cr>gv=gv", {})
keymap('v', 'K', ":m '<-2<cr>gv=gv", {})
keymap('i', '<C-j>', '<esc>:m .+1<cr>==', {})
keymap('i', '<C-k>', '<esc>:m .-2<cr>==', {})
keymap('n', '<leader>j', ':m .+1<cr>==', {})
keymap('n', '<leader>k', ':m .-2<cr>==', {})
keymap('n', '<leader>h', '<cmd>lua vim.lsp.buf.rename()<CR>', {})

-- Edit the Vim files
keymap('n', '<leader>vim', ':lua require("plug-config.telescope").search_vimfiles()<cr>', {})
keymap('n', '<leader>dot', ':lua require("plug-config.telescope").search_dotfiles()<cr>', {})

-- Create new file
keymap('n', '<leader>new', ':lua require("scripts.createfile").create_file()<cr>', {})
