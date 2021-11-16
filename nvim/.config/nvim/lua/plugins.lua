require('packer').startup(function()

  use 'wbthomason/packer.nvim' -- Packer.nvim

  -- THEMES
  use 'Th3Whit3Wolf/onebuddy'
  use 'tjdevries/gruvbuddy.nvim'
  use 'gruvbox-community/gruvbox'
  use 'navarasu/onedark.nvim'
  use 'mhartington/oceanic-next'
  use 'tomasr/molokai'
  use {'challenger-deep-theme/vim', as = 'challenger-deep'}
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
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'neovim/nvim-lspconfig'
  use 'kabouzeid/nvim-lspinstall'

  -- OTHER
  use 'mhinz/vim-startify'
  use 'jiangmiao/auto-pairs'
  use 'hoob3rt/lualine.nvim'
  use 'tjdevries/cyclist.vim'
  use 'tjdevries/express_line.nvim'

end)
