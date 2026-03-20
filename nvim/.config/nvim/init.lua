-- options.lua  (or paste into init.lua)

local opt = vim.opt

-- Indentation and tabs
opt.softtabstop = 4
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.expandtab   = true
opt.autoindent  = true
opt.smartindent = true

-- Line numbers
opt.number         = true
opt.relativenumber = true

-- Appearance
opt.background   = "light"
opt.signcolumn   = "yes"
opt.cursorline   = true
opt.colorcolumn  = "80"
opt.laststatus   = 2
opt.showmatch    = true

-- No background (transparent terminal)
opt.termguicolors = false

-- Treat dash-separated words as a single word (dw/diw/ciw)
opt.iskeyword:append("-")

-- Keep cursor 8 lines from top/bottom
opt.scrolloff = 8

-- Backspace behavior
opt.backspace = { "indent", "eol", "start" }

-- Cursor responsiveness
opt.updatetime = 50

-- Syntax highlighting
vim.cmd("syntax on")

-- Leader key
vim.g.mapleader = " "

-- Keymaps
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex, { desc = "Open netrw" })
