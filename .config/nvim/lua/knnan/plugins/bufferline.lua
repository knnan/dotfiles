vim.opt.termguicolors = true
local bufferline = require("bufferline")
bufferline.setup({


options = {
    style_preset=bufferline.style_preset.no_italic,
    show_buffer_icons= false,
    offsets= {
         {
                    filetype = "NvimTree",
                    text = "File Explorer" ,
                    text_align = "left" ,
                    separator = true
                }

    }


}})
