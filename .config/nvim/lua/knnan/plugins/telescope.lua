local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

require("telescope").setup {
    pickers = {
        buffers = {
            ignore_current_buffer=true,
            show_all_buffers = true,
            sort_lastused = true,
            theme = "dropdown",
            previewer = false,
            mappings = {
                i = {
                    ["<c-d>"] = "delete_buffer",
                },
                n = {
                    ["<c-d>"] = "delete_buffer",
                }
            }
        }
    },
    defaults = {
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
            n = {},
        },
        -- layout_strategy = "cursor"
        -- layout_strategy = "center"
        layout_strategy = "vertical"
        -- layout_strategy = "horizontal"
    }
}

-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<C-F>', builtin.current_buffer_fuzzy_find, {

})
vim.keymap.set('n', '<a-p>', builtin.commands, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
vim.keymap.set('n', '<C-O>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
