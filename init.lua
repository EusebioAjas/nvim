-- Plugins
require('plugins')

-- General
require('keymappings').setup()
require('settings').load_options()
require('settings').load_commands()
require('colorscheme')

-- Plugins
require('nv-compe')
require('nv-galaxyline')
require('nv-colorizer')
require('nv-bufferline')
require('nv-gitsigns')
require('nv-autopairs')
require('nv-telescope')
require('nv-nvimtree')
require('nv-treesitter')
require('nv-lspsaga')

-- LSP 
require('lsp')

