vim.api.nvim_set_var("fugitive_pty", false)

return {
  {
    "tpope/vim-fugitive",
    keys = {
      {
        "<leader>gs",
        ":Git<CR>",
        desc = "Git status",
      },
      {
        "<leader>gw",
        ":Gwrite<CR>",
        desc = "Git write current file",
      },
      {
        "<leader>gr",
        ":Gread<CR>",
        desc = "Git read current file",
      },
      {
        "<leader>g",
        ":Git blame<CR>",
        desc = "Git blame",
      },
    },
  },
}
