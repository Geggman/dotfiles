require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

-- Colorscheme Shit
vim.cmd("colorscheme gruvbox")

-- Plugin Configuration
require('plug-config.compeconfig')
require('plug-config.lspconfig')
require('plug-config.lspinstall')
require('plug-config.harpoon')
require('plug-config.lua-line')
require('plug-config.treesitter')
require('plug-config.telescope')
require('plug-config.comment')
--vim.cmd("so ~/.config/nvim/lua/plug-config/cyclist.vim")

