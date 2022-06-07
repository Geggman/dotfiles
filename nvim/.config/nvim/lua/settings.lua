-- vim.o - global options
-- vim.wo - local to window

vim.g.mapleader = ' '
vim.g.ayucolor = "mirage"
-- vim.cmd("set background=dark")

local set = vim.o

-- vim.g.everforest_transparent_background = 1
-- vim.g.everforest_enable_italic = 1
require('monokai').setup { palette = require('monokai').soda }
-- require('colorbuddy').colorscheme("onebuddy")
vim.cmd("highlight Normal guibg=none")

set.expandtab = true
set.smartindent = true
set.shiftwidth = 2
set.softtabstop = 2
set.termguicolors = true
set.number = true
set.relativenumber = true
set.swapfile = false
set.hidden = true
-- set.guicursor = ""
set.hlsearch = false
set.mouse = 'a'
set.incsearch = true
set.wrap = false
set.scrolloff = 8
set.syntax = 'on'
vim.cmd(":set clipboard=unnamedplus")

