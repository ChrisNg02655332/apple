local theme = require("tailwind.colors").setup().theme

local tailwind = {}

tailwind.normal = {
	a = { bg = theme.syn.fun, fg = theme.ui.fg },
	b = { bg = theme.diff.change, fg = theme.syn.fun },
	c = { bg = theme.ui.bg, fg = theme.ui.fg },
}

tailwind.insert = {
	a = { bg = theme.diag.ok, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.diag.ok },
}

tailwind.command = {
	a = { bg = theme.syn.operator, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.operator },
}

tailwind.visual = {
	a = { bg = theme.syn.keyword, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.keyword },
}

tailwind.replace = {
	a = { bg = theme.syn.constant, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

tailwind.inactive = {
	a = { fg = theme.ui.fg_dim },
	b = { fg = theme.ui.fg_dim, gui = "bold" },
	c = { fg = theme.ui.fg_dim },
}

if vim.g.tailwind_lualine_bold then
	for _, mode in pairs(tailwind) do
		mode.a.gui = "bold"
	end
end

return tailwind
