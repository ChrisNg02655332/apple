---@param palette PaletteColors
return function(palette)
	return {
		ui = {
			fg         = palette.gray_a,
			fg_dim     = palette.gray_a,

			bg         = palette.gray_6,
			bg_gutter  = palette.gray_5,
			bg_visual  = palette.gray_3,

			nontext    = palette.gray_3,
			whitespace = palette.gray_4,

			float      = {
				fg = palette.gray_a2,
				bg = palette.gray_5,
				fg_border = palette.gray_a2,
				bg_border = palette.gray_5,
			},

			pmenu      = {
				fg = palette.gray_a2,
				bg = palette.gray_5,
				fg_sel = palette.gray_a,
				bg_sel = palette.gray_4,
			}
		},
		diff = {
			add    = palette.green,
			delete = palette.red,
			change = palette.blue,
			text   = palette.yellow,
		},

		diag = {
			ok = palette.green,
			error = palette.red,
			warning = palette.orange,
			info = palette.blue,
			hint = palette.cyan
		},
		syn = {
			boolean    = palette.red_a,
			constant   = palette.red_a,
			comment    = palette.gray_a3,
			deprecated = palette.gray_a3,
			-- identifier = palette.gray_a,
			keyword    = palette.purple_a,
			number     = palette.purple_a,
			operator   = palette.orange,
			-- parameter  = palette.aqua_p1,
			-- punct      = palette.light_m2,
			--
			preproc    = palette.purple_a,
			-- regex      = palette.red_p1,
			fun        = palette.blue_a,
			statement  = palette.red_a,
			string     = palette.green,
			type       = palette.orange_a,
			variable   = "none",
			--
			-- special1   = palette.blue_p1,
			-- special2   = palette.green_p1,
			-- special3   = palette.red_p1,
			-- special4   = palette.yellow
			--
		},
		vcs = {
			added   = palette.green,
			removed = palette.red,
			changed = palette.yellow,
		}
	}
end
