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
