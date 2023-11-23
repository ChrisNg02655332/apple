local M = {}

M.config = {
	terminalColors = true,
	colors = { theme = { dark = {}, light = {} } },
	theme = "dark"
}

function M.load(theme)
	theme = theme or M.config.theme
	M._CURRENT_THEME = theme

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "apple"
	vim.o.termguicolors = true

	local colors = require("apple.colors").setup({ theme = theme, colors = M.config.colors })
	local highlights = require("apple.highlights").setup(colors, M.config)

	require("apple.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
