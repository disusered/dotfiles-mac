-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local wk = require("which-key")

wk.register({
  ["<leader>"] = {
    ["<enter>"] = { [[<cmd>w<CR>]], "Save file", noremap = true, silent = true },
    q = {
      function()
        require("mini.bufremove").delete(0, false)
      end,
      "Delete the current buffer",
    },
  },
  ["]"] = {
    b = { [[<cmd>bnext<CR>]], "Next buffer", noremap = true, silent = true },
    t = { [[<cmd>tabnext<CR>]], "Next tab", noremap = true, silent = true },
    q = { [[<cmd>cnext<CR>]], "Next quickfix", noremap = true, silent = true },
  },
  ["["] = {
    b = { [[<cmd>bprevious<CR>]], "Previous buffer", noremap = true, silent = true },
    t = { [[<cmd>tabprevious<CR>]], "Previous tab", noremap = true, silent = true },
    q = { [[<cmd>cprevious<CR>]], "Previous quickfix", noremap = true, silent = true },
  },
})
