return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = {
      'DiffviewFileHistory', 'DiffviewOpen', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewRefresh'
    },
    keys = function()
      return {
        {
          "<leader>gdo",
          "<cmd>DiffviewOpen<cr>",
          desc = "Open diff view",
        },
        {
          "<leader>gdq",
          "<cmd>DiffviewClose<cr>",
          desc = "Close diff view",
        },
        {
          "<leader>gdt",
          "<cmd>DiffviewToggleFiles<cr>",
          desc = "Toggle files pane in diff view",
        },
        {
          "<leader>gdf",
          "<cmd>DiffviewFocusFiles<cr>",
          desc = "Focus diff view",
        },
        {
          "<leader>gdr",
          "<cmd>DiffviewRefresh<cr>",
          desc = "Refresh diff view",
        },
        {
          "<leader>gdh",
          "<cmd>DiffviewFileHistory<cr>",
          desc = "File history",
        },
      }
    end
  }
}
