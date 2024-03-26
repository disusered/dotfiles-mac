return {
  {
    "linux-cultist/venv-selector.nvim",
    cmd = "VenvSelect",
    opts = function(_, opts)
      if LazyVim.has("nvim-dap-python") then
        opts.dap_enabled = true
      end
      return vim.tbl_deep_extend("force", opts, {
        name = {
          "venv",
          ".venv",
          "env",
          ".env",
        },
        -- There is a bug with how this plugin detects virtualenvs, so we need to
        -- specify the path to the virtualenvs and the number of parents to go up
        path = os.getenv("HOME") .. "/Development",
        parents = 0,
        enable_debug_output = true,
      })
    end,
    keys = { { "<leader>cv", "<cmd>:VenvSelect<cr>", desc = "Select VirtualEnv" } },
  }
}
