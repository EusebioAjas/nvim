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
  -- LSP config
  use 'neovim/nvim-lspconfig'
  use 'glepnir/lspsaga.nvim'
  use 'onsails/lspkind-nvim'
  -- Autocomplete and languge pack
  use 'hrsh7th/nvim-compe'
  use 'hrsh7th/vim-vsnip'
  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
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
  use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
  -- Ruby and Rails 
  use 'tpope/vim-endwise'
  use 'tpope/vim-rails'
  -- es6 and react snippets
  use {'dsznajder/vscode-es7-javascript-react-snippets', run = 'yarn install --frozen-lockfile && yarn compile' }
  -- Git
  use 'TimUntersberger/neogit'
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- General plugins
  use 'windwp/nvim-autopairs'
  use 'kevinhwang91/nvim-bqf'
end)
