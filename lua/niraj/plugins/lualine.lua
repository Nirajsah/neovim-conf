local colors = {
	blue = "#80a0ff",
	cyan = "#79dac8",
	black = "#080808",
	white = "#c6c6c6",
	red = "#ff5189",
	violet = "#d183e8",
	grey = "#303030",
}

local bubbles_theme = {
	normal = {
		a = { fg = nil, bg = nil },
		b = { fg = colors.white, bg = colors.grey },
		c = { fg = nil, bg = nil },
	},

	insert = { a = { fg = colors.black, bg = colors.blue } },
	visual = { a = { fg = colors.black, bg = colors.cyan } },
	replace = { a = { fg = colors.black, bg = colors.red } },

	inactive = {
		a = { fg = colors.white, bg = colors.black },
		b = { fg = colors.white, bg = colors.black },
		c = { fg = colors.black, bg = colors.black },
	},
}

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				theme = bubbles_theme,
				section_separators = { "", "" },
				component_separators = { "", "" },
			},

			sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = {
					"filename",
				},
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},

			inactive_sections = {
				lualine_a = { "mode" },
				lualine_b = { "branch" },
				lualine_c = { "filename" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = { "progress" },
				lualine_z = { "location" },
			},
			extensions = { "nvim-tree" },
		})
	end,
}

-- optional, you can define those yourself if you need
-- local sections = noirbuddy_lualine.sections
-- local inactive_sections = noirbuddy_lualine.inactive_sections
--
-- lualine.setup({
-- 	options = {
-- 		icons_enabled = true,
-- 		theme = theme,
-- 		filetype = { colored = false },
-- 		component_separators = { left = "", right = "" },
-- 		section_separators = { left = "", right = "" },
-- 		disabled_filetypes = {},
-- 		always_divide_middle = true,
-- 	},
-- 	sections = sections,
-- 	inactive_sections = inactive_sections,
-- })
