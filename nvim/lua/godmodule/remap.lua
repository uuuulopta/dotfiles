vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.opt.clipboard = 'unnamed'
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<Leader>o", "o<Esc>" )
vim.keymap.set("n", "<Leader>O","O<Esc>" )
vim.keymap.set("n","<Left>","<nop>")
vim.keymap.set("n","<Right>","<nop>")
vim.keymap.set("n","<Up>","<nop>")
vim.keymap.set("n","<Down>","<nop>")
vim.keymap.set("i","<Left>","<nop>")
vim.keymap.set("i","<Right>","<nop>")
vim.keymap.set("i","<Up>","<nop>")
vim.keymap.set("i","<Down>","<nop>")

