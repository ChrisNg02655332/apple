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

		-- Folded		Line used for closed folds.
		Folded = { fg = theme.ui.special, bg = theme.ui.bg_p1 },
		-- FoldColumn	'foldcolumn'
		FoldColumn = { fg = theme.ui.nontext, bg = theme.ui.bg_gutter },


		ErrorMsg = { fg = theme.diag.error },
		WarningMsg = { fg = theme.diag.warning },

		MatchParen = { fg = theme.diag.warning, bold = true },
		ModeMsg = { fg = theme.diag.warning, bold = true },
		MoreMsg = { fg = theme.diag.info },
		MsgArea = vim.o.cmdheight == 0 and { link = 'StatusLine' } or { fg = theme.ui.fg_dim },

		NonText = { fg = theme.ui.nontext },
		Normal = { fg = theme.ui.fg },

		NormalFloat = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },
		FloatBorder = { fg = theme.ui.float.fg_border, bg = theme.ui.float.bg_border },

		Pmenu = { fg = theme.ui.pmenu.fg, bg = theme.ui.pmenu.bg },
		PmenuSel = { fg = theme.ui.pmenu.fg_sel, bg = theme.ui.pmenu.bg_sel },
		PmenuThumb = { bg = theme.ui.pmenu.bg_thumb },

		Question = { link = "MoreMsg" },

		-- TODO: check this again
		LineNr = { fg = theme.ui.fg_dim },
		SignColumn = { fg = theme.ui.fg, bg = theme.ui.bg },
		-- TODO: check this again
		Structure = { fg = theme.ui.fg_dim },
		Whitespace = { fg = theme.ui.whitespace },

		-- Visual		Visual mode selection.
		Visual = { bg = theme.ui.bg_visual },
	}
end

return M
