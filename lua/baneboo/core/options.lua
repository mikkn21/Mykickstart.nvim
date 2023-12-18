local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)


-- UI
opt.guicursor = ""
opt.errorbells = false


-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one


-- line wrapping
opt.wrap = false -- disable line wrapping

-- Set highlight on search
opt.hlsearch = false

-- Enable mouse mode
opt.mouse = 'a'

-- Sync clipboard between OS and Neovim
opt.clipboard = 'unnamedplus'

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- Keep signcolumn on by default
opt.signcolumn = 'yes'

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position


-- Decrease update time
opt.updatetime = 250
opt.timeoutlen = 300

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'

-- Make sure your terminal supports this
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

opt.colorcolumn = "80" -- show column on the right
opt.scrolloff = 15 -- scroll offset
