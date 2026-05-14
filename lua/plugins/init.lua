return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    event = "User FilePost",
    cmd = { "LspInfo", "LspStart", "LspStop", "LspRestart" },
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^6",
    ft = { "rust" },
    init = function()
      vim.g.rustaceanvim = require "configs.rustaceanvim"
    end,
  },

  {
    "saecki/crates.nvim",
    ft = { "toml" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function(_, opts)
      require("crates").setup(opts)
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
    ensure_installed = {
      "vim", "lua", "vimdoc",
      "html", "css", "rust", "toml", "python"
    },
  	},
  },
}
