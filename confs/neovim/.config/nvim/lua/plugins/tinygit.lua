return {
  {
    "chrisgrieser/nvim-tinygit",
    dependencies = {
      "stevearc/dressing.nvim",
      "nvim-telescope/telescope.nvim",
      "rcarriga/nvim-notify",
    },
    keys = {
      {
        '<leader>gC',
        mode = 'n',
        function() require("tinygit").smartCommit() end,
        desc = "Smart Commit",
      },
      {
        '<leader>gA',
        function() require("tinygit").amendOnlyMsg {} end,
        desc = "Amend Message",
      },
      {
        '<leader>gE',
        function() require("tinygit").amendOnlyMsg {} end,
        desc = "Amend No Edit",
      }
    }
  },
}
