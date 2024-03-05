local Util = require("lazyvim.util")

return {
  {
    "stevearc/conform.nvim",
    opts = function()
      ---@class ConformOpts
      local opts = {
        -- LazyVim will use these options when formatting with the conform.nvim formatter
        format = {
          timeout_ms = 3000,
          async = false, -- not recommended to change
          quiet = false, -- not recommended to change
        },
        ---@type table<string, conform.FormatterUnit[]>
        formatters_by_ft = {
          -- sql formatting
          sql = { "sqlfluff" },
          vue = { "prettier" },
          typescript = { "prettier" },
        },
        -- The options you set here will be merged with the builtin formatters.
        -- You can also define any custom formatters here.
        ---@type table<string, conform.FormatterConfigOverride|fun(bufnr: integer): nil|conform.FormatterConfigOverride>
        formatters = {
          injected = { options = { ignore_errors = true } },
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
      }
      return opts
    end
  },
}
