local builtin = require('telescope.builtin')
require("telescope").setup {defaults = {layout_strategy = "bottom_pane"}}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<C-F>', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('i', '<C-F>', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<a-p>', builtin.commands, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
