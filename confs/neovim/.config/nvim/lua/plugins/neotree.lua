return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "-",
      function()
        require("neo-tree.command").execute({
          toggle = true,
          dir = vim.loop.cwd(),
          position = "current",
        })
      end,
      desc = "Explorer NeoTree (cwd)",
    },
  },
}
