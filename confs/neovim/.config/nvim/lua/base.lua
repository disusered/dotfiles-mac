-- Use system clipboard as default depending on platform
vim.opt.clipboard = 'unnamedplus'

-- Remap space as leader key
vim.api.nvim_set_keymap('', '<Space>', '<Nop>', {
    noremap = true,
    silent = true
})

-- Set leader to space
vim.g.mapleader = ' '

-- Set local leader to m
vim.g.maplocalleader = 'm'

-- Configure default tabstop
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true

-- Use smart case when searching
vim.o.ignorecase = true
vim.o.smartcase = true

-- Default to /g with %s/foo/bar
vim.o.gdefault = true

-- Pattern to ignore when expanding wildcards, file/dir, or globs
vim.o.wildignore = vim.o.wildignore .. '.git*,.hg*,.svn*,node_modules/**,'

-- Disable automatic backups
vim.o.backup = false
vim.o.writebackup = false

-- Disable swap file
vim.o.swapfile = false

-- Lower threshhold before CursorHold autocommand is run
vim.o.updatetime = 750

-- Use persistent history
vim.o.undodir = vim.loop.os_homedir() .. '/.dotfiles/nvim/.config/undos/'

-- TODO: Spellfile setup
-- vim.o.spellfile = vim.loop.os_homedir() .. '/.dotfiles/vim/spellfile.utf-8.add'
