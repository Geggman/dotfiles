source $HOME/.config/nvim/vim/plugins.vim " Plugins
source $HOME/.config/nvim/vim/mappings.vim " Keybinds
source $HOME/.config/nvim/vim/settings.vim " Settings

"let ayucolor='mirage'
colorscheme gruvbox
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

" Plugins
luafile $HOME/.config/nvim/plug-config/lspinstall.lua
source $HOME/.config/nvim/plug-config/lspconfig.vim
source $HOME/.config/nvim/plug-config/telescope.nvim
source $HOME/.config/nvim/plug-config/uwu.vim
source $HOME/.config/nvim/plug-config/completion.vim

highlight Nomral guibg=none

