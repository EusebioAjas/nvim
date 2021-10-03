local M = {}

CACHE_PATH = vim.fn.stdpath "cache"

M.load_options = function()
  local opt = vim.opt
  local default_options = {
    autoindent = true,
    background = "dark",
    backup = false,
    clipboard = "unnamedplus",
    cmdheight = 2,
    completeopt = {"menuone", "noselect"},
    conceallevel = 0,
    cursorline = true,
    encoding = "utf-8",
    expandtab = true,
    fileencoding = "utf-8",
    hidden = true,
    incsearch = true,
    laststatus = 2,
    list = true,
    listchars = "eol:⏎,tab:>-,trail:·,space:·,extends:>,precedes:<",
    mouse = "a",
    number = true,
    pumheight = 10,
    relativenumber = true,
    ruler = true,
    scrolloff = 8,
    sidescrolloff = 8,
    shiftwidth = 2,
    showtabline = 2,
    signcolumn = "yes",
    smartindent = true,
    smarttab = true,
    spelllang = "en",
    splitbelow = true,
    splitright = true,
    tabstop = 2,
    termguicolors = true,
    colorcolumn = "101",
    timeoutlen = 500,
    undodir = CACHE_PATH .. "/undodir",
    undofile = true,
    updatetime = 300,
    wrap = false,
    writebackup = false,
  }

  opt.shortmess:append "c"

  for k, v in pairs(default_options) do
    vim.opt[k] = v
  end

end

M.load_commands = function()
  local cmd = vim.cmd
  cmd "set whichwrap+=<,>,[,],h,l"
  
  -- transparent window
  cmd "au ColorScheme * hi Normal ctermbg=none guibg=none"
  cmd "au ColorScheme * hi SignColumn ctermbg=none guibg=none"
  cmd "au ColorScheme * hi NormalNC ctermbg=none guibg=none"
  cmd "au ColorScheme * hi MsgArea ctermbg=none guibg=none"
  cmd "au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none"
  cmd "au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none"
  cmd "let &fcs='eob: '"
end

return M
