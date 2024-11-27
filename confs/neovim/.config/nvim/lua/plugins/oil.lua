local git_ignored = setmetatable({}, {
  __index = function(self, key)
    local proc = vim.system({ "git", "ls-files", "--ignored", "--exclude-standard", "--others", "--directory" }, {
      cwd = key,
      text = true,
    })
    local result = proc:wait()
    local ret = {}
    if result.code == 0 then
      for line in vim.gsplit(result.stdout, "\n", { plain = true, trimempty = true }) do
        -- Remove trailing slash
        line = line:gsub("/$", "")
        table.insert(ret, line)
      end
    end

    rawset(self, key, ret)
    return ret
  end,
})

local detail = false

return {
  "stevearc/oil.nvim",
  opts = {
    -- Hide gitignored files
    -- https://github.com/stevearc/oil.nvim/blob/master/doc/recipes.md#hide-gitignored-files
    view_options = {
      is_hidden_file = function(name, _)
        -- dotfiles are always considered hidden
        if vim.startswith(name, ".") then
          return true
        end
        local dir = require("oil").get_current_dir()
        -- if no local directory (e.g. for ssh connections), always show
        if not dir then
          return false
        end
        -- Check if file is gitignored
        return vim.list_contains(git_ignored[dir], name)
      end,
    },
    keymaps = {
      -- Toggle file detail view
      -- https://github.com/stevearc/oil.nvim/blob/master/doc/recipes.md#toggle-file-detail-view
      ["gd"] = {
        desc = "Toggle file detail view",
        callback = function()
          detail = not detail
          if detail then
            require("oil").set_columns({ "icon", "permissions", "size", "mtime" })
          else
            require("oil").set_columns({ "icon" })
          end
        end,
      },

      -- Toggle show hidden files
      ["gh"] = {
        desc = "Toggle hidden files",
        callback = function()
          require("oil").toggle_hidden()
        end,
      },
    },
  },
  -- dependencies = { "echasnovski/mini.icons" },
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
  },
}
