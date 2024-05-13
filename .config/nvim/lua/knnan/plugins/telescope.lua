local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local themes = require('telescope.themes')


require("telescope").setup {
    pickers = {
        find_files = {
            theme = "dropdown",
            previewer = false
        },
        help_tags = {

            mappings = {
                i = {
                    ["<CR>"] = "file_vsplit",
                },
            }
        },
        buffers = {
            ignore_current_buffer = true,
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
        file_ignore_patterns = {
            ".git/",
            ".cache",
            "%.o",
            "%.a",
            "%.out",
            "%.class",
            "%.pdf",
            "%.mkv",
            "%.mp4",
            "%.jpg",
            "%.jpeg",
            "%mp3",
            "%.zip"
        },
        mappings = {
            i = {
                ["<esc>"] = actions.close,
            },
            n = {},
        },
        -- layout_strategy = "cursor"
        -- layout_strategy = "center"
        -- layout_strategy = "vertical"
        layout_strategy = "horizontal"
    }
}


-- Enable telescope fzf native, if installed
pcall(require('telescope').load_extension, 'fzf')

vim.keymap.set('n', '<C-P>', builtin.find_files, {})
vim.keymap.set('n', '<C-F>', builtin.current_buffer_fuzzy_find, {

})
vim.keymap.set('n', '<a-p>', builtin.commands, {})
vim.keymap.set('n', '<leader>f', builtin.live_grep, {})
-- vim.keymap.set('n', '<C-O>', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
-- Shortcut for searching your Neovim configuration files
vim.keymap.set('n', '<leader>sn', function()
    builtin.find_files { cwd = vim.fn.stdpath 'config' }
end, { desc = '[S]earch [N]eovim files' })
