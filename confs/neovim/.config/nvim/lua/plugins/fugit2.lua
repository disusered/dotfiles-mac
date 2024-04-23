return {
  {
    'SuperBo/fugit2.nvim',
    opts = {
      width = 100,
      min_width = 50,
      content_width = 60,
      max_width = "80%",
      height = "60%",
    },
    dependencies = {
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
      'nvim-lua/plenary.nvim',
      "chrisgrieser/nvim-tinygit"
    },
    cmd = { 'Fugit2', 'Fugit2Graph' },
    keys = {
      -- TODO: Enable when git signing is fixed
      -- {
      --   '<leader>gs',
      --   mode = 'n',
      --   '<cmd>Fugit2<cr>',
      --   desc = "Git Status",
      -- },
      {
        "<leader>gl",
        "<cmd>Fugit2Graph<cr>",
        desc = "Git log",
      },
    }
  }
}
