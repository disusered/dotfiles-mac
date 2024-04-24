return {
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",

    config = function()
      require("peek").setup({
        auto_load = false,         -- whether to automatically load preview when entering another markdown buffer
        close_on_bdelete = true,   -- close preview window on buffer delete
        syntax = true,             -- enable syntax highlighting, affects performance
        theme = "light",           -- 'dark' or 'light'
        update_on_change = true,
        app = "webview",           -- 'webview', 'browser', string or a table of strings
        filetype = { "markdown" }, -- list of filetypes to recognize as markdown
      })
      vim.api.nvim_create_user_command("MarkdownPreviewOpen", require("peek").open, {})
      vim.api.nvim_create_user_command("MarkdownPreviewClose", require("peek").close, {})
    end,

    ft = { "markdown" },

    keys = function()
      local peek = require("peek")
      local peek_toggle = function()
        if peek.is_open() then
          peek.close()
        else
          peek.open()
        end
      end

      return {
        {
          "<leader>cp",
          function() peek_toggle() end,
          desc = "Toggle markdown preview",
        },
      }
    end

  },
}
