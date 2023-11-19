local M = {}

function M.setup(colors, config)
	local theme = colors.theme
	config = config or require("solarized").config

	return {
		Cursor = { fg = theme.ui.bg, bg = theme.ui.fg },
		CursorLine = { bg = theme.ui.bg_gutter },
		CursorLineNr = { fg = theme.diag.warning, bg = theme.ui.bg, bold = true },

		DiagnosticError = { fg = theme.diag.error },
		DiagnosticWarn = { fg = theme.diag.warning },
		DiagnosticInfo = { fg = theme.diag.info },
		DiagnosticHint = { fg = theme.diag.hint },
		DiagnosticOk = { fg = theme.diag.ok },

		DiagnosticSignError = { fg = theme.diag.error, bg = theme.ui.bg_gutter },
		DiagnosticSignWarn = { fg = theme.diag.warning, bg = theme.ui.bg_gutter },
		DiagnosticSignInfo = { fg = theme.diag.info, bg = theme.ui.bg_gutter },
		DiagnosticSignHint = { fg = theme.diag.hint, bg = theme.ui.bg_gutter },

		DiagnosticVirtualTextError = { link = "DiagnosticError" },
		DiagnosticVirtualTextWarn = { link = "DiagnosticWarn" },
		DiagnosticVirtualTextInfo = { link = "DiagnosticInfo" },
		DiagnosticVirtualTextHint = { link = "DiagnosticHint" },

		-- vcs
		diffAdded = { fg = theme.vcs.added },
		diffRemoved = { fg = theme.vcs.removed },
		diffDeleted = { fg = theme.vcs.removed },
		diffChanged = { fg = theme.vcs.changed },
		diffOldFile = { fg = theme.vcs.removed },
		diffNewFile = { fg = theme.vcs.added },

		EndOfBuffer = { fg = theme.ui.bg },

		ErrorMsg = { fg = theme.diag.error },
		WarningMsg = { fg = theme.diag.warning },

		Normal = { fg = theme.ui.fg },
		NormalFloat = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },
		FloatBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },
		LineNr = { fg = theme.ui.line_nr },
		SignColumn = { fg = theme.ui.fg, bg = theme.ui.bg },
		Whitespace = { fg = theme.ui.whitespace },
	}
end

return M
