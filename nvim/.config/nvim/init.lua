-- LSP
require('plug-config.cmpconfig') -- nvim-cmp.nvim
require('plug-config.lspconfig') -- lspconfig.nvim
require('plug-config.lspinstall') -- lspinstall.nvim
vim.cmd("so /home/guy/.config/nvim/lua/lua-ls.lua")

-- Core config
require('plugins') -- Plugins
require('settings') -- Settings
require('mappings') -- Key mappings

-- Colorscheme Shit

-- vim.cmd("colorscheme gruvb")
require('colorbuddy').colorscheme("onebuddy")

-- LOAD PLUGINS
require('plug-config.harpoon') -- harpoon.nvim
require('plug-config.lua-line') -- lualine.nvim
require('plug-config.treesitter') -- treesitter
require('plug-config.telescope') -- telescope.nvim
require('plug-config.comment') -- comment.nvim

