local M = {}

CACHE_PATH = vim.fn.stdpath "cache"

M.load_options = function()
  local opt = vim.opt
  local default_options = {
    completeopt = {"menuone", "noselect"},
    hidden = true,
    number = true,
    relativenumber = true,
    wrap = false,
    encoding = "utf-8",
    pumheight = 10,
    fileencoding = "utf-8",
    ruler = true,
    cmdheight = 2,
    mouse = "a",
    splitbelow = true,
    splitright = true,
    termguicolors = true,
    conceallevel = 0,
    tabstop = 2,
    shiftwidth = 2,
    smarttab = true,
    expandtab = true,
    smartindent = true,
    autoindent = true,
    laststatus = 2,
    cursorline = true,
    background = "dark",
    showtabline = 2,
    backup = false,
    writebackup = false,
    number = true,
    relativenumber = true,
    scrolloff = 8, -- doesn't work
    signcolumn = "yes",
    updatetime = 300,
    timeoutlen = 500,
    clipboard = "unnamedplus",
    incsearch = true,
    undodir = CACHE_PATH .. "/undodir",
    undofile = true,
    listchars = "eol:⏎,tab:>-,trail:·,space:·,extends:>,precedes:<",
    list = true,
    --showmode =false,
    spelllang = "en,cjk"
  }

  opt.shortmess:append "c"

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end

end

M.load_commands = function()
  local cmd = vim.cmd
  cmd "set whichwrap+=<,>,[,],h,l"
end

return M
