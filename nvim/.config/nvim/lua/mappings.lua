local keymap = vim.api.nvim_set_keymap

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
keymap('n', '<leader>af', '<cmd>lua require("harpoon.mark").add_file()<cr>', {})
keymap('n', '<leader>qm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', {})
keymap('n', '<leader>fj', '<cmd>lua require("harpoon.ui").nav_file(1)<cr>', {})
keymap('n', '<leader>fk', '<cmd>lua require("harpoon.ui").nav_file(2)<cr>', {})
keymap('n', '<leader>fl', '<cmd>lua require("harpoon.ui").nav_file(3)<cr>', {})
keymap('n', '<leader>f;', '<cmd>lua require("harpoon.ui").nav_file(4)<cr>', {})

-- Moving Text
keymap('v', 'J', ":m '>+1<cr>gv=gv", {})
keymap('v', 'K', ":m '<-2<cr>gv=gv", {})
keymap('i', '<C-j>', '<esc>:m .+1<cr>==', {})
keymap('i', '<C-k>', '<esc>:m .-2<cr>==', {})
keymap('n', '<leader>j', ':m .+1<cr>==', {})
keymap('n', '<leader>k', ':m .-2<cr>==', {})

-- Edit the Vim files
keymap('n', '<leader>vim', ':lua require("plug-config.telescope").search_vimfiles()<cr>', {})
keymap('n', '<leader>dot', ':lua require("plug-config.telescope").search_dotfiles()<cr>', {})

-- Todos
keymap('n', '<leader>to', ':lua require("plug-config.telescope").search_todo()<cr>', {})
keymap('n', '<leader>tc', ':lua require("scripts.todo").create_file()<cr>', {})





