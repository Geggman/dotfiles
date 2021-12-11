local setkeymap = vim.api.nvim_set_keymap

require('telescope').setup{
  defaults = {
    file_sorter = require('telescope.sorters').get_fzy_sorter,
    prompt_prefix ="> ",
    color_devicons = true
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}


-- Sweet keymaps
setkeymap('n', '<C-p>', '<cmd>lua require("telescope.builtin").find_files()<cr>', {})
setkeymap('n', '<leader>gf', '<cmd>lua require("telescope.builtin").git_files()<cr>', {})
setkeymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").file_browser()<cr>', {})
setkeymap('n', '<leader>lg', '<cmd>lua require("telescope.builtin").live_grep()<cr>', {})
require('telescope').load_extension('fzy_native')



-- List the dotfiles
local M = {}
M.search_vimfiles = function()
  require("telescope.builtin").find_files({
    prompt_title = "< Vim Files >",
    cwd = "~/dotfiles/nvim/.config/nvim/",
  })
end

M.search_dotfiles = function()
  require("telescope.builtin").git_files({
    prompt_title = "< Dotfiles >",
    cwd = "~/dotfiles/",
  })
end

M.search_todo = function()
  require("telescope.builtin").find_files({
    prompt_title= "< Todo >",
    cwd = "~/.todo/",
  })
end


return M




