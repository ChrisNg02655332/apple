return {
	dark = function(palette)
		return {
			ui = {
				fg = palette.base1,
				bg = palette.base03,

				line_nr = palette.base01,
				cursorline = palette.base02
			},
			diag = {
				ok = palette.green,
				error = palette.red,
				warning = palette.yellow,
				info = palette.blue,
				hint = palette.cyan
			}
		}
	end
}
