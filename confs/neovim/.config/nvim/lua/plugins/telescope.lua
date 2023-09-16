local actions = require("telescope.actions")
local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      "debugloop/telescope-undo.nvim",
    },
    config = function(_, opts)
      local telescope = require("telescope")
      telescope.setup(opts)
      telescope.load_extension("undo")
    end,
    keys = {
      {
        -- keymap to browse undo history
        "<leader>su",
        function()
          require("telescope").extensions.undo.undo()
        end,
        desc = "Undo history",
      },
      {
        -- keymap to browse files
        "<leader>p",
        function()
          require("telescope.builtin").find_files({ find_command = { "rg", "--files", "--hidden", "-g", "!.git" } })
        end,
        desc = "Find file",
      },
      {
        -- keymap to browse buffer
        "<leader>b",
        function()
          require("telescope.builtin").buffers()
        end,
        desc = "Find buffer",
      },
      {
        -- keymap to grep for grepping the name under the cursor
        "!",
        function()
          require("telescope.builtin").grep_string()
        end,
        desc = "Find in files",
      },
      {
        -- disable keymap for git status in telescope
        "<leader>gs",
        false,
      },
    },
    opts = function(_, opts)
      opts.extensions = {
        undo = {
          use_delta = false,
          side_by_side = false,
          mappings = {
            i = {
              ["<cr>"] = require("telescope-undo.actions").restore,
            },
          },
        },
      }

      opts.defaults.vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob",
        "!.git",
        "--glob",
        "!node_modules",
      }

      opts.defaults.mappings = {
        i = {
          ["<c-h>"] = "which_key",
          ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<c-t"] = actions.select_tab,
          ["<c-p>"] = nil,
          ["<a-i>"] = function()
            local action_state = require("telescope.actions.state")
            local line = action_state.get_current_line()
            Util.telescope("find_files", { no_ignore = true, default_text = line })()
          end,
          ["<a-h>"] = function()
            local action_state = require("telescope.actions.state")
            local line = action_state.get_current_line()
            Util.telescope("find_files", { hidden = true, default_text = line })()
          end,
          ["<C-Down>"] = function(...)
            return require("telescope.actions").cycle_history_next(...)
          end,
          ["<C-Up>"] = function(...)
            return require("telescope.actions").cycle_history_prev(...)
          end,
          ["<C-f>"] = function(...)
            return require("telescope.actions").preview_scrolling_down(...)
          end,
          ["<C-b>"] = function(...)
            return require("telescope.actions").preview_scrolling_up(...)
          end,
        },
        n = {
          ["q"] = function(...)
            return require("telescope.actions").close(...)
          end,
        },
      }
    end,
  },
}
