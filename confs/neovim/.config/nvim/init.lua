if vim.g.vscode then
  -- VSCode Neovim-specific settings
  require("vscode.base")
end

-- Initialize LazyVim
require("config.lazy")
