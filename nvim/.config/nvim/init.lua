require('lua-ls') -- lua-ls
require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

-- Colorscheme Shit
-- vim.cmd("colorscheme gruvb")
require('colorbuddy').colorscheme("onebuddy")

-- Plugin Configuration
require('plug-config.cmpconfig') -- nvim-cmp.nvim
require('plug-config.lspconfig') -- lspconfig.nvim
require('plug-config.lspinstall') -- lspinstall.nvim
require('plug-config.harpoon') -- harpoon.nvim
require('plug-config.lua-line') -- lualine.nvim
require('plug-config.treesitter') -- treesitter
require('plug-config.telescope') -- telescope.nvim
require('plug-config.comment') -- comment.nvim
--vim.cmd("so ~/.config/nvim/lua/plug-config/cyclist.vim")


