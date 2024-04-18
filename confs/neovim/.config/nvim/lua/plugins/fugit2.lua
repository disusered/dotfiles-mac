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
      {
        "chrisgrieser/nvim-tinygit",
        ft = { "git_rebase", "gitcommit" },
        dependencies = {
          "stevearc/dressing.nvim",
          "nvim-telescope/telescope.nvim",
          "rcarriga/nvim-notify",
        },
      },
    },
    cmd = { 'Fugit2', 'Fugit2Graph' },
    keys = {
      {
        '<leader>gs',
        mode = 'n',
        '<cmd>Fugit2<cr>',
        desc = "Git status",
      },
    }
  }
}
