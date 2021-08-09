-- tab switch buffer
require("bufferline").setup{}
vim.api.nvim_set_keymap('n', '<TAB>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>p', ':BufferLinePick<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>pd', ':BufferLinePickClose<CR>', { noremap = true, silent = true })

