local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

return require('packer').startup(function()
  -- Packer can manage itself
  use {'wbthomason/packer.nvim', opt = true}

  -- Nvimtree
  use 'kyazdani42/nvim-tree.lua'

  -- LSP Zero
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},
      {'saadparwaiz1/cmp_luasnip'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},

      -- Snippet Collection (Optional)
      {'rafamadriz/friendly-snippets'},
    }
  }
  -- Treesitter
  use ({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
  use 'nvim-treesitter/playground'
  use 'p00f/nvim-ts-rainbow'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Galaxy line 
  use 'glepnir/galaxyline.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'

  -- Colorscheme
  use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'norcalli/nvim-colorizer.lua'
  use 'unblevable/quick-scope'

  -- BufferLine
  use {
    'akinsho/nvim-bufferline.lua',
    branch = 'main',
    requires = 'kyazdani42/nvim-web-devicons'
  }

  -- Git
  use 'TimUntersberger/neogit'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  use 'mbbill/undotree'

  -- General plugins
  use 'windwp/nvim-autopairs'
  use 'kevinhwang91/nvim-bqf'
  use {'akinsho/toggleterm.nvim', branch = 'main'}
end)
