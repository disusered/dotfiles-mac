-- This is the main reason I am considering quitting LazyVim, this fucking asshole
-- keeps adding his bullshit add-ons to my config, and I have to keep removing them
-- or modifying them and porting older configs. Fuck this asshole.

return {
  "folke/snacks.nvim",
  opts = {
    dashboard = { enabled = false },
    statuscolumn = { enabled = false },
  },
  keys = {
    {
      "<leader>q",
      function()
        Snacks.bufdelete()
      end,
      desc = "Delete Buffer",
    },
  },
}
