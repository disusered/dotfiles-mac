return {
  { "nvim-neotest/neotest-jest" },
  { "jfpedroza/neotest-elixir" },
  { "nvim-neotest/neotest-python" },
  {
    "nvim-neotest/neotest",
    config = function(_, opts)
      vim.list_extend(opts.adapters, {
        require("neotest-jest"),
        require("neotest-elixir"),
        require("neotest-python"),
      })
      require("neotest").setup(opts)
    end,
  },
}
