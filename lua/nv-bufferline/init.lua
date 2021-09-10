-- tab switch buffer
require("bufferline").setup{}

local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', opts)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>p', ':BufferLinePick<CR>', opts)
vim.api.nvim_set_keymap('n', '<Leader>pd', ':BufferLinePickClose<CR>', opts)

