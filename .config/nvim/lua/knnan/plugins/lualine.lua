local status, lualine = pcall(require, "lualine")
if not status then
    print("lualine not found")
    return
end
lualine.setup({
    options = {
        -- theme= "gruvbox-material"
        -- theme = "everforest"
        -- theme = "vitesse"
        theme = "vesper"
    }
})
