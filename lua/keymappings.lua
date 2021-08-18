M = {}
function M.load_normal_mode_keymaps()
  -- NORMAL MODE
  vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true})
  -- no hl
  vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', { noremap = true, silent = true })
  -- explorer
  vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  -- alternative to save
  --vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
  -- executes :u(undo) like Command+z or Ctrl+z
  vim.api.nvim_set_keymap('n', '<Leader>z', ':u<CR>', { silent = true })
  -- move line/block
  vim.api.nvim_set_keymap('n', 'K', ':m .-2<CR>==', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', 'J', ':m .+1<CR>==', { noremap = true, silent = true })
  -- better window movement
  vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', { silent = true })
  vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', { silent = true })
  vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', { silent = true })
  vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', { silent = true })
  -- split window
  vim.api.nvim_set_keymap('n', 'ss', ':split<Return><C-w>w', { silent = true })
  vim.api.nvim_set_keymap('n', 'sv', ':vsplit<Return><C-w>w', { silent = true })
end

function M.load_insert_mode_keymaps()
  -- use jk instead scape
  vim.api.nvim_set_keymap('i', 'jk', '<ESC>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', 'kj', '<ESC>', { noremap = true, silent = true })
  -- move current line/block
  vim.api.nvim_set_keymap('i', '<A-j>', '<ESC>:m .+1<CR>==gi', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('i', '<A-k>', '<ESC>:m .-2<CR>==gi', { noremap = true, silent = true })
  -- TAB complete
  vim.api.nvim_set_keymap('i', "<expr> <CR>", 'pumvisible() ? \"\\<C-y>\" : \"\\<CR>\"', { noremap = true })
end

function M.load_visual_mode_keymaps()
-- better indenting
  vim.api.nvim_set_keymap('v', '<', '<gv', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('v', '>', '>gv', { noremap = true, silent = true })
end

function M.load_visual_block_mode_keymaps()
  -- move selected line / block of text in visual, insert and normal mode
  vim.api.nvim_set_keymap('x', '<A-j>', ':m \'>+1<CR>gv-gv\'', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('x', '<A-k>', ':m \'<-2<CR>gv-gv\'', { noremap = true, silent = true })
end

function M.setup()
  -- LEADER KEY
  vim.g.mapleader = ' '
  -- NORMAL MODE
  M.load_normal_mode_keymaps()
  -- INSERT MODE
  M.load_insert_mode_keymaps()
  -- VISUAL MODE
  M.load_visual_mode_keymaps()
  -- VISUAL BLOCK MODE
  M.load_visual_block_mode_keymaps()
end

return M
