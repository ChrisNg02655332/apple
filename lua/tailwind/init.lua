local M = {}

M.config = {
	terminalColors = true,
	colors = { theme = { dark = {}, light = {} } },
	theme = "dark"
}

function M.load(theme)
	theme = theme or M.config.theme

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "tailwind"
	vim.o.termguicolors = true

	local colors = require("tailwind.colors").setup({ theme = theme, colors = M.config.colors })
	local highlights = require("tailwind.highlights").setup(colors, M.config)

	require("tailwind.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
