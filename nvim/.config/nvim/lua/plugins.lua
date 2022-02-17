require('packer').startup(function()

  use 'wbthomason/packer.nvim' -- Packer.nvim
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- configuration
      }
    end
  }

  -- THEMES
  use 'ishan9299/modus-theme-vim'
  use 'overcache/NeoSolarized'
  use 'folke/lsp-colors.nvim'
  use "EdenEast/nightfox.nvim"
  use 'Th3Whit3Wolf/onebuddy'
  use 'tjdevries/gruvbuddy.nvim'
  use 'gruvbox-community/gruvbox'
  use 'mhartington/oceanic-next'
  use {'challenger-deep-theme/vim', as = 'challenger-deep'}
  use 'kyazdani42/nvim-web-devicons'
  use 'dracula/vim'
  use 'drewtempelmeyer/palenight.vim'
  use 'ayu-theme/ayu-vim'
  use 'folke/tokyonight.nvim'
  use 'rktjmp/lush.nvim'

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
  use "folke/lua-dev.nvim"
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/nvim-lsp-installer'

  -- OTHER
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
  use 'mhinz/vim-startify'
  use 'jiangmiao/auto-pairs'
  use 'tjdevries/express_line.nvim'
  use 'numToStr/Comment.nvim'
  use 'sbdchd/neoformat'




  -- LUAROCKS
  use_rocks 'luafilesystem'





end)
