-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- empty setup using defaults
require("nvim-tree").setup({
  update_focused_file = {
    enable = true,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    }
  }
})
