return {
  {
    "chrisgrieser/nvim-tinygit",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim",
    },
    keys = function()
      local tinygit = require("tinygit")
      return {
        {
          "<leader>gC",
          mode = "n",
          function()
            tinygit.smartCommit()
          end,
          desc = "Smart Commit",
        },
        {
          "<leader>gA",
          function()
            tinygit.amendOnlyMsg({})
          end,
          desc = "Amend Message",
        },
        {
          "<leader>gE",
          function()
            tinygit.amendNoEdit({})
          end,
          desc = "Amend No Edit",
        },
        {
          "<leader>gU",
          function()
            tinygit.undoLastCommit()
          end,
          desc = "Undo Last Commit",
        },
        {
          "<leader>gSu",
          function()
            tinygit.stashPush()
          end,
          desc = "Stash Push",
        },
        {
          "<leader>gSp",
          function()
            tinygit.stashPop()
          end,
          desc = "Stash Pop",
        },
      }
    end,
  },
  {
    "stevearc/dressing.nvim",
    opts = {
      input = { insert_only = false },
    },
  },
}
