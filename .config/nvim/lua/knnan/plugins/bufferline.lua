vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup({
    highlights = {
        buffer_selected = {
            bg = '#a7c080',
            fg = '#3a3e45',
            bold = true,
            show_close_icons = false
        }
    },
    options = {
        themable = true,
        style_preset = {
            bufferline.style_preset.no_italic,
            bufferline.style_preset.no_bold,
            bufferline.style_preset.minimal
        },
        show_buffer_icons = false,
        show_close_icons = false,
        show_buffer_close_icons = false,
        indicator = {
            style = 'none'
        },

        tab_size = 5,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true
            }

        }


    }
})
