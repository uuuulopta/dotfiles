return {
	"ej-shafran/compile-mode.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	init = function()
		---@type CompileModeOpts
		vim.g.compile_mode = {
			error_regexp_table = {
				rust = {
					regex = "^ *--> \\([^:]\\+\\):\\([0-9]\\+\\):\\([0-9]\\+\\)",
					filename = 1,
					row = 2,
					col = 3,
					priority = 1,
				},
			},
		}
	end,
}
