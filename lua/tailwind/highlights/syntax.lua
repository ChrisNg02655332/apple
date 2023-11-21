local M = {}

function M.setup(colors, config)
	local theme = colors.theme
	config = config or require("tailwind").config

	return {
		Boolean = { fg = theme.syn.boolean, bold = true },
		Constant = { fg = theme.syn.constant },
		Comment = { fg = theme.syn.comment },
		Character = { link = "String" },

		--  Exception	try, catch, throw
		Exception = { fg = theme.syn.statement },

		--  Float		a floating point constant: 2.3e10
		Float = { link = "Number" },
		Function = { fg = theme.syn.fun },

		-- *Identifier	any variable name
		Identifier = { fg = theme.syn.identifier },

		-- *Ignore		left blank, hidden  |hl-Ignore|
		Ignore = { link = "NonText" },

		--  Keyword	any other keyword
		Keyword = { fg = theme.syn.keyword },
		Number = { fg = theme.syn.number },

		--  Conditional	if, then, else, endif, switch, etc.
		--  Repeat		for, do, while, etc.
		--  Label		case, default, etc.
		--  Operator	"sizeof", "+", "*", etc.
		Operator = { fg = theme.syn.operator },

		-- *PreProc	generic Preprocessor
		PreProc = { fg = theme.syn.preproc },
		--  Include	preprocessor #include
		--  Define		preprocessor #define
		--  Macro		same as Define
		--  PreCondit	preprocessor #if, #else, #endif, etc.

		-- *Statement	any statement
		Statement = { fg = theme.syn.statement },

		String = { fg = theme.syn.string },

		-- *Type		int, long, char, etc.
		Type = { fg = theme.syn.type },
	}
end

return M
