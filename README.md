# Neovim Configuration for Rust and React Development

This Neovim configuration is optimized for Rust development, but it also supports React development, although with some limitations regarding formatting and LSP functionality.

## Plugins

- Package Manager: Lazy.nvim
- Other Plugins:
  1. conform.nvim
  2. copilot.nvim
  3. lualine.nvim
  4. nvim-autopairs.nvim
  5. nvim-cmp.nvim
  6. rust_analyzer (LSP for Rust)
  7. telescope.nvim
  8. treesitter.nvim
  9. monochrome (colorscheme)
  10. comment.nvim
  11. mason.nvim
  12. dressing.nvim
  13. crates.nvim
  14. nvim-colorizer
  15. bufferline.nvim
  16. rust.vim

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
