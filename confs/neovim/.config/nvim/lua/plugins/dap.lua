return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "js-debug-adapter")
        end,
      },
    },
    opts = function()
      local dap = require("dap")

      -- Add Chrome debug adapter
      if not dap.adapters["pwa-chrome"] then
        dap.adapters["pwa-chrome"] = {
          type = "server",
          host = "localhost",
          port = "${port}",
          executable = {
            command = "node",
            args = {
              require("mason-registry").get_package("js-debug-adapter"):get_install_path()
              .. "/js-debug/src/dapDebugServer.js",
              "${port}",
            },
          },
        }
      end

      -- Add Chrome debug configuration
      for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" }) do
        if not dap.configurations[language] then
          dap.configurations[language] = {
            {
              type = "pwa-chrome",
              request = "attach",
              name = "Attach Program (pwa-chrome, select port)",
              port = function()
                return vim.fn.input { prompt = "Debugger port: ", default = 9222 }
              end,
              program = "${file}",
              cwd = vim.fn.getcwd(),
              sourceMaps = true,
              urlFilter = function()
                local host = vim.fn.input { prompt = "Server host: ", default = "localhost" }
                local port = vim.fn.input { prompt = "Server port: ", default = 3000 }
                return "http://" .. host .. ":" .. port .. "/*"
              end,
              webRoot = "${workspaceFolder}",
            }
          }
        end
      end
    end,
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")

      -- setup dap config by VsCode launch.json file
      require("dap.ext.vscode").load_launchjs(nil, {
        debugpy = { 'python' },
        ["pwa-node"] = { 'javascript' },
      })

      -- inherit the default configuration
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
      end
    end,

  },
  -- {
  --   "mxsdev/nvim-dap-vscode-js",
  --   dependencies = {
  --     {
  --       "mfussenegger/nvim-dap",
  --       "williamboman/mason.nvim",
  --       opts = function(_, opts)
  --         opts.ensure_installed = opts.ensure_installed or {}
  --         table.insert(opts.ensure_installed, "js-debug-adapter")
  --       end,
  --     },
  --   },
  --   opts = function()
  --     return {
  --       -- Path of node executable. Defaults to $NODE_PATH, and then "node"
  --       -- node_path = "node",
  --
  --       -- Path to vscode-js-debug installation
  --       -- debugger_path = require("mason-registry").get_package("js-debug-adapter"):get_install_path()
  --       -- .. "/js-debug/src/dapDebugServer.js",
  --
  --       -- Command to use to launch the debug server. Takes precedence over `node_path` and `debugger_path`.
  --       debugger_cmd = { "node", require("mason-registry").get_package("js-debug-adapter"):get_install_path()
  --       .. "/js-debug/src/dapDebugServer.js" },
  --
  --       -- which adapters to register in nvim-dap ('pwa-node', 'pwa-chrome', 'pwa-msedge', 'node-terminal', 'pwa-extensionHost')
  --       adapters = { 'pwa-chrome' },
  --
  --       -- Path for file logging
  --       -- log_file_path = "(stdpath cache)/dap_vscode_js.log"
  --
  --       -- Logging level for output to file. Set to false to disable file logging.
  --       -- log_file_level = false
  --
  --       -- Logging level for output to console. Set to false to disable console output.
  --       -- log_console_level = vim.log.levels.ERROR
  --     }
  --   end,
  --   config = function(_, opts)
  --     -- Add Chrome debug adapter to DAP
  --     for _, language in ipairs({ "typescript", "javascript", "vue" }) do
  --       require("dap").configurations[language] = {
  --         {
  --           type = "pwa-chrome",
  --           request = "attach",
  --           name = "Attach Program (pwa-chrome, select port)",
  --           port = 9222,
  --           -- port = function()
  --           --   return vim.fn.input { prompt = "Debugger port: ", default = 9222 }
  --           -- end,
  --           program = "${file}",
  --           cwd = vim.fn.getcwd(),
  --           sourceMaps = true,
  --           -- urlFilter = "http://localhost:3000/*",
  --           -- urlFilter = function()
  --           --   local host = vim.fn.input { prompt = "Server host: ", default = "localhost" }
  --           --   local port = vim.fn.input { prompt = "Server port: ", default = 3000 }
  --           --   return "http://" .. host .. ":" .. port .. "/*"
  --           -- end,
  --           webRoot = "${workspaceFolder}",
  --         }
  --       }
  --     end
  --
  --     require("dap-vscode-js").setup(opts)
  --   end,
  --
  -- }
}

-- TODO: Append to existing configurations instead of overwriting them
-- for _, language in ipairs({ "typescript", "javascript" }) do
--   require("dap").configurations[language] = {
--     {
--       -- LazyVim's language extras includes some configuration, for more:
--       -- https://github.com/mxsdev/nvim-dap-vscode-js?tab=readme-ov-file#configurations
--       {
--         type = "pwa-chrome",
--         request = "attach",
--         name = "Attach Program (pwa-chrome, select port)",
--         program = "${file}",
--         cwd = vim.fn.getcwd(),
--         sourceMaps = true,
--         port = function()
--           return vim.fn.input { prompt = "Select port: ", default = 9229 }
--         end,
--         webRoot = "${workspaceFolder}",
--       },
--     }
--   }
-- end
