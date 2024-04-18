return {
  "lewis6991/gitsigns.nvim",
  opts = {
    signs = {
      add = { text = "+" },
      change = { text = "▎" },
      delete = { text = "_" },
      topdelete = { text = "‾" },
      changedelete = { text = "~" },
      untracked = { text = "▎" }
    }
  },

  keys = function()
    local gitsigns = require('gitsigns')
    return {
      {
        "<leader>gw",
        gitsigns.stage_buffer,
        desc = "Git write current file",
      },
      {
        "<leader>gr",
        gitsigns.reset_buffer,
        desc = "Git read current file",
      },
      {
        "<leader>gb",
        function() gitsigns.blame_line { full = true } end,
        desc = "Git blame",
      },
    }
  end
}
