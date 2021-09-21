source $HOME/.config/nvim/vim/plugins.vim " Plugins
source $HOME/.config/nvim/vim/mappings.vim " Keybinds
source $HOME/.config/nvim/vim/settings.vim " Settings

set termguicolors

" Plugins
luafile $HOME/.config/nvim/plug-config/lspinstall.lua
luafile $HOME/.config/nvim/plug-config/compeconfig.lua
luafile $HOME/.config/nvim/plug-config/harpoon.lua
luafile $HOME/.config/nvim/plug-config/lualine.lua
source $HOME/.config/nvim/plug-config/lspconfig.vim
source $HOME/.config/nvim/plug-config/telescope.nvim
source $HOME/.config/nvim/plug-config/uwu.vim



