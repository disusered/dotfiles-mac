-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set local leader to m
vim.g.maplocalleader = "m"

-- Change default conceal level to 0
vim.opt.conceallevel = 0

-- Disable active cursorline
vim.opt.cursorline = false

-- Default tabstops
vim.opt.softtabstop = 2

-- Default to /g with %s/foo/bar
vim.opt.gdefault = true

-- Pattern to ignore when expanding wildcards, file/dir, or globs
vim.opt.wildignore = vim.o.wildignore .. ".git*,.hg*,.svn*,node_modules/**,"

-- Use absolute line numbers
vim.opt.relativenumber = false

-- Add alias to common typos for closing and saving windows
vim.cmd(":command! WQ wq")
vim.cmd(":command! WQ wq")
vim.cmd(":command! Wq wq")
vim.cmd(":command! Wqa wqa")
vim.cmd(":command! W w")
vim.cmd(":command! Q q")

-- Start diff with vertical splits
vim.opt.diffopt = vim.o.diffopt .. ",vertical"

-- Allow panes to be fully collapsed
vim.o.winminheight = 0

-- Configure line breaks
vim.opt.linebreak = true
vim.opt.breakindent = true
vim.opt.showbreak = " …"

-- Show column at 80 characters
vim.opt.colorcolumn = "80"

-- Set characters to distinguish tabs and spaces
vim.opt.list = true
vim.opt.listchars = "trail:●,tab:⇥ᐧ,extends:▸,precedes:◂"

-- Open splits above, not below
vim.opt.splitbelow = false
