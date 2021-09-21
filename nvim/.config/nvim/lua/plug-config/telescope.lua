local setkeymap = vim.api.nvim_set_keymap

require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix ="> ",
    color_devicons = true
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

setkeymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', {})
setkeymap('n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files()<cr>', {})
setkeymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {})
require('telescope').load_extension('fzy_native')


local M = {}
M.search_dotfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Vim Dotfiles >",
    cwd = "~/dotfiles/nvim/.config/nvim/",
  })
end

return M


