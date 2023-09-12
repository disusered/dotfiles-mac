local actions = require("telescope.actions")
local Util = require("lazyvim.util")

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        -- keymap to browse plugin files
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
    },
    opts = function(_, opts)
      opts.defaults.mappings = {
        i = {
          ["<c-h>"] = "which_key",
          ["<c-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
          ["<c-t"] = actions.select_tab,
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
