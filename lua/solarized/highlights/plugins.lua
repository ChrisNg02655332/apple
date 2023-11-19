local M = {}

function M.setup(colors, config)
	local theme = colors.theme
	config = config or require("solarized").config

	return {
		-- IndentBlankline
		IblScope = { link = "Function" },
	}
end

return M
