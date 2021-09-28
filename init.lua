-- Packer plugins
require('packerplugins')

-- General
require('keymappings').setup()
require('settings').load_options()
require('settings').load_commands()
require('colorscheme')

-- Plugins
require('plugins')

-- LSP 
require('lsp')

