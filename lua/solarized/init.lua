local M = {}

M.config = {
	colors = { theme = { dark = {}, light = {} } },
	theme = "dark"
}
--- load the colorscheme
---@param theme? string
function M.load(theme)
	theme = theme or M.config.theme

	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "solarized"
	vim.o.termguicolors = true

	local colors = require("solarized.colors").setup({ theme = theme, colors = M.config.colors })
	local highlights = require("solarized.highlights").setup(colors, M.config)
	require("solarized.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
