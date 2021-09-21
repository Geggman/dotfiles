local keymap = vim.api.nvim_set_keymap

keymap('i', 'jk', '<esc>', {}) -- ESC sucks

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
