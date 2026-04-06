require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "rust-analyzer", "pyright" }
vim.lsp.enable(servers)

vim.lsp.config("rust-analyzer", {
  cmd = { "/opt/homebrew/bin/rust-analyzer" },
  root_dir = function(fname)
    return vim.fs.root(fname, { "Cargo.toml", "rust-toolchain.toml" })
  end,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
    },
  },
})

vim.lsp.config("pyright", {
  settings = {
    pyright = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true,
    },
  },
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "rust-analyzer" then
      vim.lsp.semantic_tokens.start(args.buf, client.id)
    end
  end,
})
