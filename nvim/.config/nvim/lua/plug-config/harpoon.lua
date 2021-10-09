require("harpoon").setup({
    global_settings = {
        save_on_toggle = false,
        save_on_change = true,
    },
})

local keymap = vim.api.nvim_set_keymap

keymap('n', '<leader>af', '<cmd>lua require("harpoon.mark").add_file()<cr>', {})
keymap('n', '<leader>qm', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<cr>', {})
keymap('n', '<leader>gj', '<cmd>lua require("harpoon.ui").nav_file(1)', {})
keymap('n', '<leader>gk', '<cmd>lua require("harpoon.ui").nav_file(2)', {})
keymap('n', '<leader>gl', '<cmd>lua require("harpoon.ui").nav_file(3)', {})
keymap('n', '<leader>g;', '<cmd>lua require("harpoon.ui").nav_file(4)', {})



