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

-- Change keymaps to make navigation easier i.e. the below, in Lua
vim.api.nvim_set_keymap('n', '<C-h>', [[<Cmd>call VSCodeNotify('workbench.action.navigateLeft')<CR>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<C-j>', [[<Cmd>call VSCodeNotify('workbench.action.navigateDown')<CR>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<C-k>', [[<Cmd>call VSCodeNotify('workbench.action.navigateUp')<CR>]], {
    noremap = true,
    silent = true
})
vim.api.nvim_set_keymap('n', '<C-l>', [[<Cmd>call VSCodeNotify('workbench.action.navigateRight')<CR>]], {
    noremap = true,
    silent = true
})
