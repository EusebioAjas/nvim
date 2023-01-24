M = {}

local opts = { noremap = true, silent = true }
local silent_opt = { silent = true }
local noremap_opt = { noremap = true }
local expr_noremap_opt = { expr = true, noremap = true }

local keymap = vim.api.nvim_set_keymap

function M.load_normal_mode_keymaps()
  -- NORMAL MODE
  keymap('n', '<Space>', '<NOP>', opts)
  -- no hl
  keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)
  --nvim tree
  keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', noremap_opt)
  -- alternative to save
  keymap('n', '<C-s>', ':w<CR>', opts)
  -- executes :u(undo) like Command+z or Ctrl+z
  keymap('n', '<Leader>z', ':u<CR>', silent_opt)
  -- move line/block
  keymap('n', '<S-k>', ':m .-2<CR>==', noremap_opt)
  keymap('n', '<S-j>', ':m .+1<CR>==', noremap_opt)
  -- better window movement
  keymap('n', 'sh', '<C-w>h', silent_opt)
  keymap('n', 'sj', '<C-w>j', silent_opt)
  keymap('n', 'sl', '<C-w>l', silent_opt)
  keymap('n', 'sk', '<C-w>k', silent_opt)
  -- split window
  keymap('n', 'ss', ':split<Return><C-w>w', silent_opt)
  keymap('n', 'sv', ':vsplit<Return><C-w>w', silent_opt)
  -- formatter
  keymap('n', '<Leader>fo', ':Format<CR>', silent_opt)
end

function M.load_insert_mode_keymaps()
  -- use jk instead scape
  keymap('i', 'jk', '<ESC>', opts)
  keymap('i', 'kj', '<ESC>', opts)
  -- move current line/block
  keymap('i', '<S-j>', '<ESC>:m .+1<CR>==gi', noremap_opt)
  keymap('i', '<S-k>', '<ESC>:m .-2<CR>==gi', noremap_opt)
end

function M.load_visual_mode_keymaps()
  -- better indenting
  keymap('v', '<', '<gv', opts)
  keymap('v', '>', '>gv', opts)
  -- move current line/block
  keymap('v', '<S-k>', [[:m '<-2<CR>gv==gv]], noremap_opt)
  keymap('v', '<S-j>', [[:m '>+1<CR>gv==gv]], noremap_opt)
end

function M.load_visual_block_mode_keymaps()
  -- move selected line / block of text in visual, insert and normal mode
  keymap('x', '<S-j>', [[:m '>+1<CR>gv-gv]], expr_noremap_opt)
  keymap('x', '<S-k>', [[:m '<-2<CR>gv-gv]], expr_noremap_opt)
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

