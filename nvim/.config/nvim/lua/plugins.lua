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
  use({
    'NTBBloodbath/doom-one.nvim',
    config = function()
        require('doom-one').setup({
            cursor_coloring = true,
            terminal_colors = false,
            italic_comments = true,
            enable_treesitter = true,
            transparent_background = false,
            pumblend = {
                enable = true,
                transparency_amount = 20,
            },
            plugins_integrations = {
                neorg = true,
                barbar = true,
                bufferline = false,
                gitgutter = false,
                gitsigns = true,
                telescope = true,
                neogit = true,
                nvim_tree = true,
                dashboard = true,
                startify = true,
                whichkey = true,
                indent_blankline = true,
                vim_illuminate = true,
                lspsaga = false,
            },
        })
    end,
  })
  use({ "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").config({})
        require("lspconfig")["null-ls"].setup({})
    end,
    requires = {"nvim-lua/plenary.nvim", "neovim/nvim-lspconfig"}
    })

  -- THEMES
  use "EdenEast/nightfox.nvim"
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
  use 'williamboman/nvim-lsp-installer'

  -- OTHER
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  } 
  use 'mhinz/vim-startify'
  use 'jiangmiao/auto-pairs'
  use 'tjdevries/cyclist.vim'
  use 'tjdevries/express_line.nvim'

end)
