---@class PaletteColors
local palette = {

	zinc_900   = "#111827", -- bg
	zinc_800   = "#1f2937",
	zinc_700   = "#3f3f46",
	zinc_600   = "#52525b",
	zinc_500   = "#71717a",
	zinc_400   = "#a1a1aa", -- fg
	zinc_200   = "#e4e4e7",

	blue_400   = "#60a5fa",
	cyan_500   = "#06b6d4",
	red_500    = "#ef4444",
	orange_500 = "#f97316",
	green_600  = "#16a34a",
	yellow_500 = "#eab308",
	violet_400 = "#e879f9",
	violet_500 = "#8b5cf6",
	indigo_500 = "#fbbf24",
}

local M = {}

function M.setup(opts)
	local theme = opts.theme
	local theme_colors = require("tailwind.themes")[theme](palette)
	return {
		theme = theme_colors,
		palette = palette,
	}
end

return M
