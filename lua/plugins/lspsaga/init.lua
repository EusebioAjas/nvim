local saga = require('lspsaga').setup({})

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round"
}

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<C-g>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-d>', '<Cmd>Lspsaga hover_doc<CR>', opts)
vim.api.nvim_set_keymap('i', '<C-l>', '<Cmd>Lspsaga signature_help<CR>', opts)
vim.api.nvim_set_keymap('n', 'gh', '<Cmd>Lspsaga lsp_finder<CR>', opts)

