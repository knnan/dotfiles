vim.g.mapleader = " "
vim.g.maplocalleader = ' '

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jj", "<ESC>")

-- move line up and down
keymap.set("n", "<C-S-Up>", ":m-2<CR>i")
keymap.set("i", "<C-S-Up>", "<ESC>:m-2<CR>i")
keymap.set("v", "<C-S-Up>", ":m-2<CR>gv")
keymap.set("n", "<C-S-Down>", ":m+<CR>i")
keymap.set("i", "<C-S-Down>", "<ESC>:m+<CR>i")
keymap.set("v", "<C-S-Down>", ":m'>+<CR>gv")

-- move cursor to the start or end of the line
keymap.set("n", "<C-S-left>", "0i")
keymap.set("i", "<C-S-left>", "<ESC>0i")
keymap.set("n", "<C-S-right>", "$i<right>")
keymap.set("i", "<C-S-right>", "<ESC>$i<right>")

-- select line

keymap.set("n", "<C-L>", "<S-V>")
keymap.set("i", "<C-L>", "<ESC><S-V>")
keymap.set("v", "<C-L>", "<Down>")

keymap.set("n", "<C-K>", "ddi")
keymap.set("i", "<C-K>", "<ESC>ddi")
keymap.set("v", "<C-K>", "di")

keymap.set("v", "<C-c>", "y")

keymap.set("n", "<C-D>", "yypi")
keymap.set("i", "<C-D>", "<ESC>yypi")
keymap.set("v", "<C-D>", "yP gv")

keymap.set("n", "<C-Q>", ":wq<CR>")
keymap.set("i", "<C-Q>", "<ESC>:wq<CR>")
keymap.set("n", "<C-S>", ":w<CR>")
keymap.set("i", "<C-S>", "<ESC>:w<CR>")

keymap.set("n", "<C-Z>", "u")
keymap.set("i", "<C-Z>", "<ESC>ui")

keymap.set("n", "<leader><leader>", "i")
keymap.set("v", "<leader><leader>", "<ESC>")

keymap.set("n", "<c-a>", "ggVG")
keymap.set("i", "<c-a>", "<ESC>ggVG")

keymap.set("n", "<leader>ff", ":lua vim.lsp.buf.format {async = true}<CR>")


