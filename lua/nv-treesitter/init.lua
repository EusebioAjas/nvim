require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "tsx",
    "javascript",
    "typescript",
    "lua",
    "json",
    "yaml",
    "html",
    "scss",
    "css",
    "dockerfile",
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25,
    persist_queries = false
  },
  rainbow = {
    enable = true
  }
}
