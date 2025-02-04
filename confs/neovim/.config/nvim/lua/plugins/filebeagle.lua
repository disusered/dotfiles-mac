return {
  {
    "jeetsukumaran/vim-filebeagle",
    lazy = false,
    keys = {
      { "-", "<Plug>FileBeagleOpenCurrentBufferDir", desc = "Open file explorer" },
    },
    init = function()
      vim.g.filebeagle_show_hidden = false
      vim.g.filebeagle_check_gitignore = true
      vim.g.filebeagle_suppress_keymaps = true
    end,
  },
}
