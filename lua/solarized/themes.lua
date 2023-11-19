return {
	dark = function(palette)
		return {
			ui = {
				fg = palette.base1,
				bg = palette.base03,
				bg_gutter = palette.base02,

				whitespace = palette.base2,

				float = {
					fg = palette.base1,
					bg = palette.base02,
					fg_border = palette.base3,
					bg_border = palette.base3
				},

			},
			diag = {
				ok = palette.green,
				error = palette.red,
				warning = palette.yellow,
				info = palette.blue,
				hint = palette.cyan
			},
			vcs = {
				added   = palette.green,
				removed = palette.red,
				changed = palette.yellow,
			},

		}
	end
}
