vim.g.mapleader = ' '


require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

-- Plugin Configuration
require('plug-config.compeconfig')
require('plug-config.harpoon')
require('plug-config.lualine')
require('plug-config.treesitter')
require('plug-config.lspinstall')
require('plug-config.telescope')
--require('plug-config.colorbuddy')
--require('plug-config.express_line')


