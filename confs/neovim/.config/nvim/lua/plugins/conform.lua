return {
  {
    "stevearc/conform.nvim",
    opts = function()
      local plugin = require("lazy.core.config").plugins["conform.nvim"]
      if plugin.config ~= M.setup then
        require("lazyvim.util").error({
          "Don't set `plugin.config` for `conform.nvim`.\n",
          "This will break **LazyVim** formatting.\n",
          "Please refer to the docs at https://www.lazyvim.org/plugins/formatting",
        }, { title = "LazyVim" })
      end
      ---@class ConformOpts
      local opts = {
        -- LazyVim will use these options when formatting with the conform.nvim formatter
        format = {
          timeout_ms = 3000,
          async = false, -- not recommended to change
          quiet = false, -- not recommended to change
          -- lsp_fallback = true,
        },
        ---@type table<string, conform.FormatterUnit[]>
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
    end,
  },
}
