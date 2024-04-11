return {
  {
    "phaazon/hop.nvim",
    vscode = true,
    keys = {
      {
        "s",
        function()
          require("hop").hint_char1({ direction = nil, current_line_only = false })
        end,
        desc = "Hop",
      },
    },
    config = function()
      require("hop").setup()
    end,
  },
}
