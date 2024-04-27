return {
  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    init = function()
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_quickfix_open_on_warning = 0
      vim.g.vimtex_view_method = "skim"
    end
  }
}
