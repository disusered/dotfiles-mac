return {
  {

    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "bash-language-server",
        "css-lsp",
        "html-lsp",
        "vue-language-server",
        "eslint-lsp",
        "prettierd",
        "astro-language-server",
        "sqlfluff",
        "elixir-ls",
        "omnisharp",
        "hadolint",
        "checkmake",
        "emmet-language-server",
        "js-debug-adapter",
        -- used by prx api
        "flake8",
        -- used by lazyvim python module
        "pyright",
        "ruff-lsp",
        -- used by my conform config
        "ruff",
        "isort",
        "black",
      },
    },
  },
}
