require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

map("n", "gd", vim.lsp.buf.definition, { desc = "goto definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "goto declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "goto implementation" })
map("n", "gr", vim.lsp.buf.references, { desc = "goto references" })
map("n", "K", vim.lsp.buf.hover, { desc = "hover" })

local function toggle_nvimtree()
  require("nvim-tree.api").tree.toggle()
end

map("n", "<leader>e", toggle_nvimtree, { desc = "toggle file explorer" })
