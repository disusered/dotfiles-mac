return {
  {
    "gbprod/yanky.nvim",
    keys = {
      {
        "<leader>sp",
        function()
          require("telescope").extensions.yank_history.yank_history({})
        end,
        desc = "Open Yank History",
      },
    },
  },
}
