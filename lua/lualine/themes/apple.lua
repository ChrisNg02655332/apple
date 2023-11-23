local theme = require("apple.colors").setup().theme

local apple = {}

apple.normal = {
	a = { bg = theme.syn.fun, fg = theme.ui.bg },
	b = { fg = theme.syn.fun },
	c = { bg = theme.ui.bg, fg = theme.ui.fg },
}

apple.insert = {
	a = { bg = theme.diag.ok, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.diag.ok },
	c = { bg = theme.ui.bg, fg = theme.ui.fg },
}

apple.command = {
	a = { bg = theme.syn.operator, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.operator },
}

apple.visual = {
	a = { bg = theme.syn.keyword, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.keyword },
}

apple.replace = {
	a = { bg = theme.syn.constant, fg = theme.ui.bg },
	b = { bg = theme.ui.bg, fg = theme.syn.constant },
}

apple.inactive = {
	a = { fg = theme.ui.fg_dim },
	b = { fg = theme.ui.fg_dim, gui = "bold" },
	c = { fg = theme.ui.fg_dim },
}

if vim.g.apple_lualine_bold then
	for _, mode in pairs(apple) do
		mode.a.gui = "bold"
	end
end

return apple
