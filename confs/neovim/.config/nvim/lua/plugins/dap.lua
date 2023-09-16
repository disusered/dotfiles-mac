return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      dap.adapters.mix_task = {
        type = "executable",
        command = require("mason-registry").get_package("elixir-ls"):get_install_path() .. "/debugger.sh",
        args = {},
      }
      dap.configurations.elixir = {
        -- TODO: Unit testing debugging
        -- {
        --   type = "mix_task",
        --   name = "mix test",
        --   task = "test",
        --   taskArgs = { "--trace" },
        --   request = "launch",
        --   startApps = true, -- for Phoenix projects
        --   projectDir = "${workspaceFolder}",
        --   requireFiles = {
        --     "test/**/test_helper.exs",
        --     "test/**/*_test.exs",
        --   },
        -- },
        {
          type = "mix_task",
          name = "phx.server",
          request = "launch",
          task = "phx.server",
          startApps = false,
          projectDir = "${workspaceFolder}",
        },
      }
    end,
  },
}
