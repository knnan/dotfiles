-- VITESSE THEME
-- require("vitesse").setup {
--   comment_italics = true,
--   transparent_background = false,
--   transparent_float_background = true, -- aka pum(popup menu) background
--   reverse_visual = false,
--   dim_nc = false,
--   cmp_cmdline_disable_search_highlight_group = false, -- disable search highlight group for cmp item
--   -- if `transparent_float_background` false, make telescope border color same as float background
--   telescope_border_follow_float_background = true,
--   -- similar to above, but for lspsaga
--   lspsaga_border_follow_float_background = false,
--   -- diagnostic virtual text background, like error lens
--   diagnostic_virtual_text_background = false,

--   -- override the `lua/vitesse/palette.lua`, go to file see fields
--   colors = {
--   },
--   themes = {
--   background = '#000000',
--   -- border = "#000000"

--   },
-- }

-- MATERIAL THEME
require('material').setup({

  contrast = {
    terminal = false, -- Enable contrast for the built-in terminal
    sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = false, -- Enable contrast for floating windows
    cursor_line = false, -- Enable darker background for the cursor line
    lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
    non_current_windows = false, -- Enable contrasted background for non-current windows
    filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
  },

  styles = { -- Give comments style such as bold, italic, underline etc.
    comments = { --[[ italic = true ]] },
    strings = { --[[ bold = true ]] },
    keywords = { --[[ underline = true ]] },
    functions = { --[[ bold = true, undercurl = true ]] },
    variables = {},
    operators = {},
    types = {},
  },

  plugins = { -- Uncomment the plugins that you use to highlight them
    -- Available plugins:
    -- "coc"
    -- "dap",
    -- "dashboard",
    -- "eyeliner",
    -- "fidget",
    -- "flash",
    -- "gitsigns",
    -- "harpoon",
    -- "hop",
    -- "illuminate",
    -- "indent-blankline",
    -- "lspsaga",
    -- "mini",
    -- "neogit",
    -- "neotest",
    -- "neo-tree",
    -- "neorg",
    -- "noice",
    -- "nvim-cmp",
    -- "nvim-navic",
    -- "nvim-tree",
    -- "nvim-web-devicons",
    -- "rainbow-delimiters",
    -- "sneak",
    "telescope",
    -- "trouble",
    -- "which-key",
    -- "nvim-notify",
  },

  disable = {

    colored_cursor = true, -- Disable the colored cursor -- set it to tru because the cursor line changes to block when it nornmal moder othewise.
    borders = false, -- Disable borders between verticaly split windows
    background = true, -- Prevent the theme from setting the background (NeoVim then uses your terminal background) ; aka transparency
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false -- Hide the end-of-buffer lines
  },

  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false -- Enable higher contrast text for darker style
  },

  lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_colors = nil, -- If you want to override the default colors, set this to a function
--   -- custom_colors = function(colors)
--   --       colors.editor.bg = "#090a10"
--   --   end

  custom_highlights = {}, -- Overwrite highlights with your own
})
-- require('material').setup({
--   disable = {
--     sidebars = true,
--     colored_cursor = true
--   },

-- })
vim.g.material_style = "deep ocean"



-- vim.cmd.colorscheme("onedark")
vim.cmd.colorscheme("vitesse")
vim.cmd.colorscheme("material")
