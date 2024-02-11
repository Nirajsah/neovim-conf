require("niraj.core")
require("niraj.lazy")
vim.cmd("highlight Normal guibg=NONE ctermbg=NONE") -- Set background to transparent
vim.cmd("highlight SignColumn guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guibg=NONE ctermbg=NONE")
vim.cmd("highlight LineNr guifg=#fff ctermfg=15")
-- vim.cmd("highlight CursorLineNr guifg=#fff ctermfg=15")
-- vim.cmd("highlight CursorLine guibg=#00000099")
vim.cmd("highlight CursorLineNr guibg=NONE ctermbg=NONE")

-- Define your colorscheme
local colors = {
	-- Base colors
	background = "none",

	-- Syntax colors
	comment = "#5C6370",
	string = "#98C379",
	number = "#D19A66",
	keyword = "#e2e8f0",
	operator = "#fb7185",
	variable_name = "#d6d3d1",
	-- UI colors
	cursorline_bg = "none",
	line_number_fg = "#4B5263",
	current_line_number_bg = "none",
	function_name = "#ef4444",
}

-- Apply the colorscheme
-- vim.cmd("highlight Normal guibg=" .. colors.background .. " guifg=" .. colors.foreground)
vim.cmd("highlight Comment guifg=" .. colors.comment)
vim.cmd("highlight String guifg=" .. colors.string)
vim.cmd("highlight Number guifg=" .. colors.number)
vim.cmd("highlight Keyword guifg=" .. colors.keyword)
vim.cmd("highlight Operator guifg=" .. colors.operator)
vim.cmd("highlight CursorLine guibg=" .. colors.cursorline_bg)
vim.cmd("highlight LineNr guifg=" .. colors.line_number_fg)
vim.cmd("highlight CursorLineNr guibg=" .. colors.current_line_number_bg)
vim.cmd("highlight Function guifg=" .. colors.function_name)
vim.cmd([[highlight TransparentStatusBar guibg=NONE]])
-- Set options
-- Optional: Set colorscheme
--vim.cmd("colorscheme none") -- Disable any existing colorscheme
--
vim.cmd("highlight ErrorMsg ctermbg=NONE ctermfg=red gui=NONE guifg=#FFB6B0 gui=underline")
vim.cmd("highlight WarningMsg ctermbg=NONE ctermfg=yellow gui=NONE guifg=#FFB6B0 gui=underline")
vim.o.wrap = true
