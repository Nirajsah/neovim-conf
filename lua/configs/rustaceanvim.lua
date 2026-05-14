return {
  server = {
    cmd = { "/opt/homebrew/bin/rust-analyzer" },
    root_dir = function(fname)
      return vim.fs.root(fname, { "Cargo.toml", "rust-project.json", "rust-toolchain.toml", ".git" })
    end,
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
        checkOnSave = true,
      },
    },
  },
}
