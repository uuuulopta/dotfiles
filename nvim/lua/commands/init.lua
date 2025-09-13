local function open_nvim_config_with_oil()
	local path
	if vim.fn.has("win32") == 1 then
		path = vim.fn.expand("$LOCALAPPDATA") .. "\\nvim"
	else
		path = vim.fn.expand("~/.config/nvim")
	end
	require("oil").open(path)
end

vim.api.nvim_create_user_command(
	"Config",
	open_nvim_config_with_oil,
	{ nargs = 0 } -- no arguments
)
