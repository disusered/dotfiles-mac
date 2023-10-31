return {
  {
    "stevearc/conform.nvim",
    opts = {
      -- https://github.com/stevearc/conform.nvim/blob/master/README.md#formatters
      formatters = {
        sqlfluff = {
          command = "sqlfluff",
          args = {
            "format",
            "--dialect",
            "postgres",
            "--disable-progress-bar",
            "--nocolor",
            "-",
          },
        },
      },
      formatters_by_ft = {
        -- elixir formatting
        heex = { "mix" },
        elixir = { "mix" },
        -- sql formatting
        sql = {
          "sqlfluff",
        },
        ["*"] = {
          "trim_whitespace",
          "trim_newlines",
          "squeeze_blanks",
          -- "injected",
        },
      },
    },
  },
}
