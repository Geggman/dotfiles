require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

require('plug-config.lspconfig')
require('plug-config.lspinstall')

-- Colorscheme Shit
--require('colorbuddy').colorscheme('gruvbuddy')
vim.cmd("colorscheme gruvbox")

-- Plugin Configuration
require('plug-config.compeconfig')
require('plug-config.harpoon')
 --require('plug-config.lua-line')
require('plug-config.treesitter')
require('plug-config.telescope')
require('plug-config.express_line')
vim.cmd("so ~/.config/nvim/lua/plug-config/cyclist.vim")
vim.cmd("so ~/.config/nvim/lua/plug-config/cyclist.vim")
