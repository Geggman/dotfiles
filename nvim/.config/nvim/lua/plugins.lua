require('packer').startup(function()

  -- THEMES
  use 'wbthomason/packer.nvim'
  use {'challenger-deep-theme/vim', as = 'challenger-deep'}  
  use 'hoob3rt/lualine.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'dracula/vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'ayu-theme/ayu-vim'

  -- COLORBUDDY
  use 'tjdevries/colorbuddy.nvim'

  -- TREESITTER
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use 'nvim-treesitter/playground'

  -- TELESCOPE & HARPOON
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'ThePrimeagen/harpoon'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'

  -- LSP
  use 'hrsh7th/nvim-compe'
  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  -- OTHER
  use 'mhinz/vim-startify' 
  use 'jiangmiao/auto-pairs'
  use 'tjdevries/express_line.nvim'
  
	
end)
