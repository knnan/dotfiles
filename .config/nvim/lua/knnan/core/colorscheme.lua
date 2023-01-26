vim.cmd.colorscheme("material")
vim.g.material_theme_style = "ocean"
local status, _ = pcall(vim.cmd,"colorscheme material")
if not status then
    print("colorscheme not found!") 
    return
end
