M = {}

local opts = { noremap = true, silent = true }
local silent_opt = { silent = true }
local noremap_opt = { noremap = true }
local expr_noremap_opt = { expr = true, noremap = true }

function M.load_normal_mode_keymaps()
  -- NORMAL MODE
  vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opts)
  -- no hl
  vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', opts)
  --nvim tree
  vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', noremap_opt)
  -- alternative to save
  vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', opts)
  -- executes :u(undo) like Command+z or Ctrl+z
  vim.api.nvim_set_keymap('n', '<Leader>z', ':u<CR>', silent_opt)
  -- move line/block
  vim.api.nvim_set_keymap('n', '<S-k>', ':m .-2<CR>==', noremap_opt)
  vim.api.nvim_set_keymap('n', '<S-j>', ':m .+1<CR>==', noremap_opt)
  -- better window movement
  vim.api.nvim_set_keymap('n', 'sh', '<C-w>h', silent_opt)
  vim.api.nvim_set_keymap('n', 'sj', '<C-w>j', silent_opt)
  vim.api.nvim_set_keymap('n', 'sl', '<C-w>l', silent_opt)
  vim.api.nvim_set_keymap('n', 'sk', '<C-w>k', silent_opt)
  -- split window
  vim.api.nvim_set_keymap('n', 'ss', ':split<Return><C-w>w', silent_opt)
  vim.api.nvim_set_keymap('n', 'sv', ':vsplit<Return><C-w>w', silent_opt)
  -- formatter
  vim.api.nvim_set_keymap('n', '<Leader>fo', ':Format<CR>', silent_opt)
end

function M.load_insert_mode_keymaps()
  -- use jk instead scape
  vim.api.nvim_set_keymap('i', 'jk', '<ESC>', opts)
  vim.api.nvim_set_keymap('i', 'kj', '<ESC>', opts)
  -- move current line/block
  vim.api.nvim_set_keymap('i', '<S-j>', '<ESC>:m .+1<CR>==gi', noremap_opt)
  vim.api.nvim_set_keymap('i', '<S-k>', '<ESC>:m .-2<CR>==gi', noremap_opt)
  -- TAB complete
  vim.api.nvim_set_keymap('i', '<C-j>', 'pumvisible() ? "\\<down>" : "\\<C-j>"', expr_noremap_opt)
  vim.api.nvim_set_keymap('i', '<C-k>', 'pumvisible() ? "\\<up>" : "\\<C-k>"', expr_noremap_opt)
  vim.api.nvim_set_keymap('i', '<CR-m>', 'pumvisible() ? complete_info()["selected"] != "-1" ? "\\<Plug>(completion_confirm_completion)" : "\\<c-e>\\<CR>" : "\\<CR>"', { expr = true })
  --vim.api.nvim_set_keymap('i', '<C-m>', 'pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>', {expr = true })
end

function M.load_visual_mode_keymaps()
  -- better indenting
  vim.api.nvim_set_keymap('v', '<', '<gv', opts)
  vim.api.nvim_set_keymap('v', '>', '>gv', opts)
  -- move current line/block
  vim.api.nvim_set_keymap('v', '<S-k>', [[:m '<-2<CR>gv==gv]], noremap_opt)
  vim.api.nvim_set_keymap('v', '<S-j>', [[:m '>+1<CR>gv==gv]], noremap_opt)
end

function M.load_visual_block_mode_keymaps()
  -- move selected line / block of text in visual, insert and normal mode
  vim.api.nvim_set_keymap('x', '<S-j>', [[:m '>+1<CR>gv-gv]], expr_noremap_opt)
  vim.api.nvim_set_keymap('x', '<S-k>', [[:m '<-2<CR>gv-gv]], expr_noremap_opt)
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

