return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
        section_separators = { left = "█", right = "█" },
      },
      sections = {
        lualine_z = {},
      },
      extensions = { "neo-tree", "lazy", "quickfix", "fugitive" },
    },
  },
}
