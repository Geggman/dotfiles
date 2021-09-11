source $HOME/.config/nvim/vim/plugins.vim " Plugins
source $HOME/.config/nvim/vim/mappings.vim " Keybinds
source $HOME/.config/nvim/vim/settings.vim " Settings

" Plugins
luafile $HOME/.config/nvim/plug-config/lspinstall.lua
luafile $HOME/.config/nvim/plug-config/lsp-config.lua
source $HOME/.config/nvim/plug-config/telescope.nvim
source $HOME/.config/nvim/plug-config/uwu.vim

colorscheme OceanicNext
