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
