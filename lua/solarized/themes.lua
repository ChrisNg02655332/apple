return {
	---@param palette PaletteColors
	dark = function(palette)
		return {
			ui = {
				fg         = palette.base1,
				fg_dim     = palette.base0,
				fg_dim00   = palette.base00,

				bg         = palette.base03,
				bg_gutter  = palette.base02,
				bg_visual  = palette.base01,

				whitespace = palette.base01,
				nontext    = palette.base02,
				special    = palette.violet,

				float      = {
					fg = palette.base2,
					bg = palette.base02,
					fg_border = palette.base00,
					bg_border = palette.base02
				},

				pmenu      = {
					fg = palette.base1,
					bg = palette.base03,
					fg_sel = palette.base2,
					bg_sel = palette.base01,
					bg_thumb = palette.base00,
				}
			},
			diag = {
				ok = palette.green,
				error = palette.red,
				warning = palette.yellow,
				info = palette.blue,
				hint = palette.cyan
			},
			syn = {
				boolean    = palette.red,
				constant   = palette.orange,
				comment    = palette.base01,
				deprecated = palette.base01,
				fun        = palette.blue,
				identifier = palette.base1,
				keyword    = palette.orange,
				number     = palette.violet,
				operator   = palette.yellow,
				-- -- parameter  = palette.violet,
				-- -- punct      = palette.violet,
				preproc    = palette.blue,
				-- regex      = palette.red,
				statement  = palette.red,
				string     = palette.green,
				type       = palette.yellow,
				-- variable = "none",
			},
			vcs = {
				added   = palette.green,
				removed = palette.red,
				changed = palette.yellow,
			},
		}
	end
}
