return {
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat (CodeCompanion)" },
      { "<leader>aq", "<cmd>CodeCompanion<cr>", desc = "Quick Chat (CodeCompanion)" },
      { "<leader>ap", "<cmd>CodeCompanionActions<cr>", desc = "Prompt Actions (CodeCompanion)" },
    },
  },
}
