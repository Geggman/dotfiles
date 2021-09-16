source $HOME/.config/nvim/vim/plugins.vim " Plugins
source $HOME/.config/nvim/vim/mappings.vim " Keybinds
source $HOME/.config/nvim/vim/settings.vim " Settings

"let ayucolor='mirage'
"highlight Normal guibg=none

" Plugins
luafile $HOME/.config/nvim/plug-config/lspinstall.lua
luafile $HOME/.config/nvim/plug-config/compeconfig.lua
source $HOME/.config/nvim/plug-config/lspconfig.vim
source $HOME/.config/nvim/plug-config/telescope.nvim
source $HOME/.config/nvim/plug-config/uwu.vim


