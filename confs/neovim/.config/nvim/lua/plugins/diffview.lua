return {
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    cmd = {
      'DiffviewFileHistory', 'DiffviewOpen', 'DiffviewToggleFiles', 'DiffviewFocusFiles', 'DiffviewRefresh'
    },
    keys = function()
      local diffview_toggle = function()
        local lib = require("diffview.lib")
        local view = lib.get_current_view()
        if view then
          -- Current tabpage is a Diffview; close it
          vim.cmd.DiffviewClose()
        else
          -- No open Diffview exists: open a new one
          vim.cmd.DiffviewOpen()
          -- Focus the changes pane
          vim.cmd('wincmd l')
          vim.cmd('wincmd l')
        end
      end

      return {
        {
          "<leader>gd",
          function() diffview_toggle() end,
          desc = "Open diff view",
        },
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
