#vim.api.nvim_set_var("fugitive_pty", false)

return {
  {
    "tpope/vim-fugitive",
    keys = {
      {
        "<leader>gs",
        "<cmd>Git<CR>",
        desc = "Git status",
      },
      {
        "<leader>gw",
        "<cmd>Gwrite<CR>",
        desc = "Git write current file",
      },
      {
        "<leader>gr",
        "<cmd>Gread<CR>",
        desc = "Git read current file",
      },
      {
        "<leader>g",
        "<cmd>Git blame<CR>",
        desc = "Git blame",
      },
    },
  },
}
