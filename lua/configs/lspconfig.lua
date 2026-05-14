require("nvchad.configs.lspconfig").defaults()

vim.api.nvim_create_user_command("LspInfo", function()
  vim.cmd "checkhealth vim.lsp"
end, { desc = "Alias to :checkhealth vim.lsp" })

vim.lsp.config("pyright", {
  settings = {
    pyright = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true,
    },
  },
})

local servers = { "html", "cssls", "pyright" }
for _, server in ipairs(servers) do
  vim.lsp.enable(server)
end
