require("config.opt")
require("config.lazy")
require("commands")

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
require("mini.extra").setup()
map('n', '<leader>sf', ":Pick files<CR>")
map('n', '<leader>sg', ":Pick grep_live<CR>")
map('n', '<leader>st', ":Pick git_files<CR>")
map('n', '<leader>c', ":Config<CR>")
map("n", "<Esc>", ":nohlsearch<CR>", { noremap = true, silent = true })
map('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true })

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
