return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = { eslint = {} },
      setup = {
        eslint = function()
          require("lazyvim.util").lsp.on_attach(function(client)
            -- TODO: Re-evaluate this
            -- if client.name == "eslint" then
            client.server_capabilities.documentFormattingProvider = true
            -- elseif client.name == "tsserver" then
            --   client.server_capabilities.documentFormattingProvider = false
            -- end
          end)
        end,
      },
      inlay_hints = {
        enabled = false,
        only_current_line = true,
      },
    },
  },
}
