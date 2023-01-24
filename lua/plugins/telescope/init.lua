local builtin = require('telescope.builtin')
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>pf', builtin.find_files, opts)
vim.keymap.set('n', '<C-p>', builtin.git_files, opts)
vim.keymap.set('n', '<leader>pg', builtin.live_grep, opts)
vim.keymap.set('n', '<leader>pb', builtin.buffers, opts)
vim.keymap.set('n', '<leader>ph', builtin.help_tags, opts)

