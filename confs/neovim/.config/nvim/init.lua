if vim.g.vscode then
  -- VSCode Neovim extension
  require("vscode.base")
else
  -- Initialize LazyVim
  require("config.lazy")
end
