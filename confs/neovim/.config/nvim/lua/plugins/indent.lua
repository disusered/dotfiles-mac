local flavor = require("catppuccin.palettes").get_palette(vim.env.CATPPUCCIN_FLAVOR)

return {
  {
    'lukas-reineke/indent-blankline.nvim',
    opts = {
      indent = {
        -- TODO: Only enable rainbow in indent languages like Python
        -- highlight = {
        --   "CatppuccinIndentRed",
        --   "CatppuccinIndentYellow",
        --   "CatppuccinIndentBlue",
        --   "CatppuccinIndentOrange",
        --   "CatppuccinIndentGreen",
        --   "CatppuccinIndentViolet",
        --   "CatppuccinIndentCyan",
        -- }
      },
      exclude = {
        filetypes = {},
        buftypes = { "terminal" },
      }
    },
    config = function(_, opts)
      local hooks = require "ibl.hooks"

      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "CatppuccinIndentRed", { fg = flavor.red })
        vim.api.nvim_set_hl(0, "CatppuccinIndentYellow", { fg = flavor.yellow })
        vim.api.nvim_set_hl(0, "CatppuccinIndentBlue", { fg = flavor.blue })
        vim.api.nvim_set_hl(0, "CatppuccinIndentOrange", { fg = flavor.peach })
        vim.api.nvim_set_hl(0, "CatppuccinIndentGreen", { fg = flavor.green })
        vim.api.nvim_set_hl(0, "CatppuccinIndentViolet", { fg = flavor.lavender })
        vim.api.nvim_set_hl(0, "CatppuccinIndentCyan", { fg = flavor.teal })
      end)

      require("ibl").setup(opts)
    end
  }
}
