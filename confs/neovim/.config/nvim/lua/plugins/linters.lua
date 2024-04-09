-- https://github.com/fredrikaverpil/dotfiles/blob/main/nvim-lazyvim/lua/plugins/lsp.lua
return {
  "mfussenegger/nvim-lint",
  opts = function(_, opts)
    local linters = require("lint").linters

    -- Lint sql files with sqlfluff
    opts.linters_by_ft["sql"] = { "sqlfluff" }
    opts.linters["sqlfluff"] = vim.list_extend({ "--dialect", "postgres" }, linters.sqlfluff.args)

    -- Lint makefiles with checkmake
    opts.linters_by_ft["make"] = { "checkmake" }

    -- Lint Python files with flake8
    opts.linters_by_ft["python"] = { "flake8" }
  end,
}
