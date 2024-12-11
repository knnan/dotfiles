require("knnan.plugins-setup")
require("knnan.core.keymaps")
require("knnan.core.colorscheme")
require("knnan.core.options")
require("knnan.core.misc_pref")
require("knnan.plugins.lualine")
-- require("knnan.plugins.bufferline")
require("knnan.plugins.telescope")
require("knnan.plugins.treesitter")
require("knnan.plugins.autopairs")
require("knnan.plugins.lsp")
require("knnan.plugins.nvimtree")
require("knnan.plugins.format")
require("knnan.plugins.misc")

vim.api.nvim_create_autocmd({"VimLeave"}, {
  pattern = '*',
  command = 'set guicursor=a:ver25-blinkon250',
})
