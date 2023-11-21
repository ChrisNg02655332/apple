return {
	---@param palette PaletteColors
	dark = function(palette)
		return {
			ui = {
				fg         = palette.zinc_400,
				fg_dim     = palette.zinc_500,

				bg         = palette.zinc_900,
				bg_gutter  = palette.zinc_700,
				bg_visual  = palette.zinc_600,

				nontext    = palette.zinc_700,
				special    = palette.red_500,
				whitespace = palette.zinc_600,

				float      = {
					fg = palette.zinc_400,
					bg = palette.zinc_800,
					fg_border = palette.zinc_400,
					bg_border = palette.zinc_800,
				},

				pmenu      = {
					fg = palette.zinc_400,
					bg = palette.zinc_800,
					fg_sel = palette.zinc_200,
					bg_sel = palette.zinc_600,
					bg_thumb = palette.zinc_600,
				}
			},
			diag = {
				ok = palette.green_600,
				error = palette.red_500,
				warning = palette.yellow_500,
				info = palette.blue_400,
				hint = palette.cyan_500
			},
			syn = {
				boolean    = palette.red_500,
				constant   = palette.red_500,
				comment    = palette.zinc_500,
				deprecated = palette.zinc_500,
				fun        = palette.blue_400,
				identifier = palette.zinc_400,
				keyword    = palette.violet_400,
				number     = palette.indigo_500,
				operator   = palette.yellow_500,
				-- -- parameter  = palette.violet,
				-- -- punct      = palette.violet,
				preproc    = palette.violet_400,
				-- regex      = palette.red,
				statement  = palette.red_500,
				string     = palette.green_600,
				type       = palette.orange_500,
				variable   = "none",
			},
			vcs = {
				added   = palette.green_600,
				removed = palette.red_500,
				changed = palette.yellow_500,
			},
		}
	end
}
