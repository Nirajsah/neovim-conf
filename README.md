# Neovim Configuration for Rust and React Development

This Neovim configuration is optimized for Rust development, but it also supports React development, although with some limitations regarding formatting and LSP functionality.

## Plugins

- Package Manager: Lazy.nvim
- Other Plugins:
  - conform.nvim
  - copilot.nvim
  - lualine.nvim
  - nvim-autopairs.nvim
  - nvim-cmp.nvim
  - rust_analyzer (LSP for Rust)
  - telescope.nvim
  - treesitter.nvim
  - monochrome (colorscheme)
  - comment.nvim
  - mason.nvim
  - dressing.nvim
  - crates.nvim
  - nvim-colorizer
  - bufferline.nvim
  - rust.vim

Feel free to use and modify this configuration according to your requirements.

### How to Install

#### Unix/Linux (bash)

```bash
git clone https://github.com/Nirajsah/neovim-conf.git ~/.config/nvim --depth 1 && nvim
```

#### Windows

if you're using Command Prompt(CMD)

```bash
git clone https://github.com/Nirajsah/neovim-conf.git %USERPROFILE%\AppData\Local\nvim --depth 1 && nvim
```

if you're using PowerShell(pwsh)

```bash
git clone https://github.com/Nirajsah/neovim-conf.git $ENV:USERPROFILE\AppData\Local\nvim --depth 1 && nvim
```
