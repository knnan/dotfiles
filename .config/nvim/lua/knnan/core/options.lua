local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true -- enable break indent

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true -- set highlight on search

-- Decrease update time
opt.updatetime = 250
opt.signcolumn = 'yes'

-- cursor line
opt.cursorline = true

-- cursor shape and blink
opt.guicursor = "a:ver25-blinkon250"


-- enable mouse
opt.mouse = "a"

-- appearance
if vim.fn.has('termguicolors') then opt.termguicolors = true end
opt.background = "dark"

-- backspace
opt.backspace = {"indent", "eol", "start"}

-- clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'
vim.lsp.set_log_level "debug"

