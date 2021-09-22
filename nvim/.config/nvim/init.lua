require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

require('plug-config.lspinstall')
require('plug-config.lspconfig')
require'lspconfig'.sumneko_lua.setup {
  cmd = {"/home/guy/lua-language-server/bin/Linux/lua-language-server", "-E", "/home/guy/lua-language-server" .. "/main.lua"},
  settings = {
    Lua = {
      diagnostics = {
        globals = {"vim"}
      }
    }
  }
}

-- Colorscheme Shit
vim.g.onedark_style='deep'
vim.g.onedark_darker_diagnostics = false
vim.g.colors_name = 'onedark'
-- Plugin Configuration

require('plug-config.compeconfig')
require('plug-config.harpoon')
require('plug-config.lualine')
require('plug-config.treesitter')
require('plug-config.telescope')
vim.cmd("so ~/.config/nvim/lua/plug-config/cyclist.vim")
--require('plug-config.colors')
--require('plug-config.express_line')

