local on_attach = require("niraj.plugins.lsp.lspconfig").on_attach
local capabilities = require("niraj.plugins.lsp.lspconfig").capabilities

return {
	-- rust-tools.nvim
	"simrat39/rust-tools.nvim",
	ft = "rust",
	dependencies = "neovim/nvim-lspconfig",
	config = function()
		local rt = require("rust-tools")

		rt.setup({
			server = {
				on_attach = on_attach,
				capabilities = capabilities,
			},
			tools = {
				hover_actions = {
					auto_focus = true,
				},
			},
		})
	end,
}
-- on_attach = function(_, bufnr)
-- Hover actions
--					vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
-- Code action groups
--					vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
--				end,
