return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    lazy = false,
    opts = {
      flavour = vim.env.CATPPUCCIN_FLAVOR,
    },
  },
}
