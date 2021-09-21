local setkeymap = vim.api.nvim_set_keymap

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    -- ..
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}

require('telescope').load_extension('fzy_native')


setkeymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', {})
setkeymap('n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files()<cr>', {})
setkeymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {})
