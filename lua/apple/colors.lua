local rgb = require("apple.utils").rgbToHex

local palette = {
	---@class PaletteColors
	dark = {
		white = rgb({ 255, 255, 255 }),

		gray = rgb({ 142, 142, 147 }),
		gray_2 = rgb({ 99, 99, 102 }),
		gray_3 = rgb({ 72, 72, 74 }),
		gray_4 = rgb({ 58, 58, 60 }),
		gray_5 = rgb({ 44, 44, 46 }), -- bg
		gray_6 = rgb({ 28, 28, 30 }),

		gray_a = rgb({ 174, 174, 178 }), -- fg
		gray_a2 = rgb({ 124, 124, 128 }),
		gray_a3 = rgb({ 84, 84, 86 }),
		gray_a4 = rgb({ 68, 68, 70 }),
		gray_a5 = rgb({ 54, 54, 56 }),
		gray_a6 = rgb({ 36, 36, 38 }),

		red = rgb({ 255, 69, 58 }),
		red_a = rgb({ 255, 105, 97 }),

		orange = rgb({ 255, 159, 10 }),
		orange_a = rgb({ 255, 179, 64 }),

		yellow = rgb({ 255, 214, 10 }),
		yellow_a = rgb({ 255, 212, 38 }),

		green = rgb({ 48, 209, 88 }),
		green_a = rgb({ 48, 219, 91 }),

		cyan = rgb({ 100, 210, 255 }),
		cyan_a = rgb({ 112, 215, 255 }),

		blue = rgb({ 10, 132, 255 }),
		blue_a = rgb({ 64, 156, 255 }),

		purple = rgb({ 191, 90, 242 }),
		purple_a = rgb({ 218, 143, 255 })
	},

	light = {}
}

local M = {}

function M.setup(opts)
	opts = opts or {}

	local theme = opts.theme or require("apple")._CURRENT_THEME
	local theme_colors = require("apple.themes")(palette[theme])
	return {
		theme = theme_colors,
		palette = palette,
	}
end

return M
