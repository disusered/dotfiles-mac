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
    opts = {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        mappings = {
          i = {
            ["<C-q>"] = require("telescope.actions").smart_send_to_qflist + require("telescope.actions").open_qflist,
          },
        },
      },
    },
  },
}
