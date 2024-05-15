vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

keymap.set("n", "<C-Q>", ":q<CR>")
keymap.set("i", "<C-Q>", "<ESC>:q<CR>")
keymap.set("n", "<C-S>", ":w<CR>")
keymap.set("i", "<C-S>", "<ESC>:w<CR>")

-- undo 
keymap.set("n", "<C-Z>", "u")
keymap.set("i", "<C-Z>", "<ESC>ui")

keymap.set("n", "<C-I>", "o")
keymap.set("i", "<C-I>", "<ESC>o")




-- select entire file
keymap.set("n", "<c-a>", "ggVG")
keymap.set("i", "<c-a>", "<ESC>ggVG")


keymap.set("n", "<C-_>", ":Commentary<CR>")
keymap.set("i", "<C-_>", "<ESC>:Commentary<CR>i")
keymap.set("v", "<C-_>", ":Commentary<CR>")


keymap.set("n","<C-W>",":bdelete<CR>")
keymap.set("n","<TAB>",":bnext<CR>")
keymap.set("n","<S-TAB>",":bprevious<CR>")

keymap.set("n","<a-e>",":NvimTreeToggle<CR>")

keymap.set("n", "<C-R>", ":lua vim.lsp.buf.format {async = true}<CR>")
keymap.set("i", "<C-R>", "<ESC>:lua vim.lsp.buf.format {async = true}<CR>i")



-- keymap.set("n","<C-p>",":Files<CR>")
-- keymap.set("i","<C-p>","<Esc>:Files<CR>")

-- keymap.set("n","<C-p>","<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
-- keymap.set("i","<C-p>","<ESC><cmd>lua require('fzf-lua').files()<CR>", { silent = true })
-- keymap.set("n","<C-o>","<cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })
-- keymap.set("i","<C-o>","<ESC><cmd>lua require('fzf-lua').buffers()<CR>", { silent = true })
