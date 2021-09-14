source $HOME/.config/nvim/vim/plugins.vim " Plugins
source $HOME/.config/nvim/vim/mappings.vim " Keybinds
source $HOME/.config/nvim/vim/settings.vim " Settings

"let ayucolor='mirage'
colorscheme gruvbox
highlight Nomral guibg=none

" Plugins
luafile $HOME/.config/nvim/plug-config/lspinstall.lua
source $HOME/.config/nvim/plug-config/lspconfig.vim
source $HOME/.config/nvim/plug-config/telescope.nvim
source $HOME/.config/nvim/plug-config/uwu.vim
source $HOME/.config/nvim/plug-config/completion.vim

