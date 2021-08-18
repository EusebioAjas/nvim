function _G.smart_tab()
  return vim.fn.pumvisible() == 1 and [[\<C-n>]] or [[\<Tab>]]
end

function _G.s_smart_tab()
  return vim.fn.pumvisible() == 1 and [[\<C-n>]] or [[\<S-Tab>]]
end

vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})
vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.s_smart_tab()', {expr = true, noremap = true})

vim.g.completion_confirm_key = ""

function _G.complete_info_tab()
  return vim.fn.pumvisible() == 1 and [[\<C-Y>]] or [[\<CR>]]
end

vim.api.nvim_set_keymap('i', '<CR>', 'v:lua.complete_info_tab()', {expr = true, noremap = true})
