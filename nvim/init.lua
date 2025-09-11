require("config.opt")
require("config.lazy")

require "vague".setup({ transparent = true })
vim.cmd("colorscheme vague")
vim.cmd(":hi statusline guibg=NONE")

local map = vim.keymap.set
map({ 'n', 'v' }, '<leader>y', '"+y')
map({ 'n', 'v' }, '<leader>d', '"+d')
map({ 'n', 'v' }, '<leader>p', '"+d')
map({ 'n', 'v' }, '<leader>p', '"+p')
map({ 'n', 'v' }, '<leader>o', ':update<CR> :source<CR>')

require("mini.icons").setup({ style = 'ascii' })
require("mini.pick").setup()
map('n', '<leader>f', ":Pick files<CR>")
map('n', '<leader>g', ":Pick grep_live<CR>")
map('n', '<leader>t', ":Pick git_files<CR>")

require('mini.completion').setup()
map('n', '<leader>lf', vim.lsp.buf.format)

require('mini.align').setup()
require('mini.surround').setup()
require("mini.notify").setup()

map('n', '-', ":Oil<CR>")

vim.cmd [[set completeopt+=menuone,noselect,popup]]


vim.lsp.enable(
	{
		"lua_ls",
		"elixirls",
	}
)

require("autocmd")
