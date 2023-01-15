local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
  'eslint',
  'sumneko_lua',
  'tsserver',
})

lsp.on_attach(
  function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gh", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>n", vim.lsp.buf.goto_next, opts)
    vim.keymap.set("n", "<leader>m", vim.lsp.buf.goto_prev, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help, opts)
  end
)

lsp.nvim_workspace()

lsp.setup()

