return {
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    keys = {
      { "<leader>aa", "<cmd>CodeCompanionChat Toggle<cr>", desc = "Toggle Chat (CodeCompanion)" },
      { "<leader>aq", "<cmd>CodeCompanion<cr>", desc = "Quick Chat (CodeCompanion)" },
      { "<leader>ap", "<cmd>CodeCompanionActions<cr>", desc = "Prompt Actions (CodeCompanion)" },
    },
    opts = {
      display = {
        action_palette = {
          provider = "telescope", -- Ensure action palettes use "telescope"
        },
      },
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = "cmd:op read op://Prescrypto/OpenAI\\ Token/key --no-newline",
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "openai",
          slash_commands = {
            ["buffer"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["file"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["help"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["now"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["symbols"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["terminal"] = {
              opts = {
                provider = "telescope",
              },
            },
            ["workspace"] = {
              opts = {
                provider = "telescope",
              },
            },
          },
        },
        inline = {
          adapter = "copilot",
        },
        cmd = {
          adapter = "copilot",
        },
      },
    },
  },
}
