M = {}

local opts = { noremap = true, silent = true }
local silent_opt = { silent = true }
local noremap_opt = { noremap = true }
local expr_noremap_opt = { expr = true, noremap = true }

local keymap = vim.keymap.set

function M.normal_mode()
  keymap('n', '<Space>', '<NOP>', opts)
  keymap('n', '<C-s>', ':w<CR>', opts)

  keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', noremap_opt)
  keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)
  keymap('n', '<Leader>z', ':u<CR>', silent_opt)

  keymap('n', '<C-k>', ':m .-2<CR>==', noremap_opt)
  keymap('n', '<C-j>', ':m .+1<CR>==', noremap_opt)

  keymap('n', 'sh', '<C-w>h', silent_opt)
  keymap('n', 'sj', '<C-w>j', silent_opt)
  keymap('n', 'sk', '<C-w>k', silent_opt)
  keymap('n', 'sl', '<C-w>l', silent_opt)

  keymap('n', 'ss', ':split<Return><C-w>w', silent_opt)
  keymap('n', 'sv', ':vsplit<Return><C-w>w', silent_opt)
end

function M.insert_mode()
  keymap('i', 'kj', '<ESC>', opts)
  keymap('i', 'jk', '<ESC>', opts)
  keymap('i', '<C-j>', '<ESC>:m .+1<CR>==gi', noremap_opt)
  keymap('i', '<C-k>', '<ESC>:m .-2<CR>==gi', noremap_opt)
end

function M.visual_mode()
  keymap('v', '<', '<gv', opts)
  keymap('v', '>', '>gv', opts)
  keymap('v', '<C-j>', [[:m '<-2<CR>gv==gv]], noremap_opt)
  keymap('v', '<C-k>', [[:m '>+1<CR>gv==gv]], noremap_opt)
end

function M.visual_block_mode()
  keymap('x', '<C-j>', [[:m '>+1<CR>gv-gv]], expr_noremap_opt)
  keymap('x', '<C-k>', [[:m '<-2<CR>gv-gv]], expr_noremap_opt)
end

function M.setup()
  vim.g.mapleader = ' '
  M.normal_mode()
  M.insert_mode()
  M.visual_mode()
  M.visual_block_mode()
end

return M

