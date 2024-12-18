return {
  {
    "mistricky/codesnap.nvim",
    build = "make",
    opts = {
      has_line_number = true,
      bg_padding = 0,
      watermark = "",
    },
    keys = {
      { "<leader>cc", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot into clipboard" },
    },
  },
}
