return {
  { "nvim-neotest/neotest-jest" },
  {
    "nvim-neotest/neotest",
    config = function(_, opts)
      vim.list_extend(opts.adapters, {
        require("neotest-jest"),
      })
      require("neotest").setup(opts)
    end,
  },
}
