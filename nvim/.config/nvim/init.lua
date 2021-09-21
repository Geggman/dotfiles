vim.g.mapleader = ' '
require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

-- Plugin Configuration
require('plug-config/compeconfig')
require('plug-config/harpoon')
require('plug-config/lualine')
require('plug-config/treesitter')
require('plug-config/lspinstall')
require('plug-config/telescope')


vim.g.colors_name = 'challenger_deep'

