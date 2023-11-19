local M = {}

function M.setup(colors, config)
	local theme = colors.theme
	config = config or require("solarized").config
	return {
		ColorColumn = { bg = theme.ui.bg },
		lCursor = { link = "Cursor" },
		Cursor = { fg = theme.ui.bg, bg = theme.ui.fg },
		CursorLine = { bg = theme.ui.cursorline },
		CursorIM = { link = "Cursor" },
		CursorColumn = { link = "CursorLine" },
		CursorLineNr = { fg = theme.diag.warning, bg = theme.ui.bg, bold = true },

		EndOfBuffer = { fg = theme.ui.bg },
		ErrorMsg = { fg = theme.diag.error },

		Normal = { fg = theme.ui.fg },
		LineNr = { fg = theme.ui.line_nr },

		SignColumn = { fg = theme.ui.fg, bg = theme.ui.bg },
	}
end

return M
