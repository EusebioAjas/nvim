vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})

-- leader key
vim.g.mapleader = ' '

-- no hl
vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })

-- explorer
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- alternative to save
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })

-- executes :u(undo) like Command+z or Ctrl+z
vim.api.nvim_set_keymap('n', '<Leader>z', ':u<CR>', { silent = true })

-- use jk instead scape
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })

-- better window movement
vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', { silent = true })

-- split window
vim.api.nvim_set_keymap('n', 'ss', ':split<Return><C-w>w', { silent = true })
vim.api.nvim_set_keymap('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })

-- better indenting
vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })

-- move selected line / block of text in visual, insert and normal mode
vim.api.nvim_set_keymap('n', 'K', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', ':m .+1<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-k>', '<ESC>:m .-2<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-j>', '<ESC>:m .+1<CR>==gi', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'K', ':m \'<-2<CR>gv=gv\'', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'J', ':m \'>+1<CR>gv=gv\'', { noremap = true, silent = true })

-- TAB complete
vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })

