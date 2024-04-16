return {
  {
    'tpope/vim-dispatch',
    keys = {
      {
        "<leader>m",
        function()
          local target = vim.fn.input("Target? ")
          vim.cmd(string.format([[Start make %s]], target))
        end,
        desc = "Dispatch a Make target"
      },
    },
  }
}
