return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("tokyonight").load()
      end,
      -- load the default settings
      defaults = {
        autocmds = true, -- lazyvim.config.autocmds
        keymaps = false, -- lazyvim.config.keymaps
      },
    },
  },
}
