local wezterm = require 'wezterm'
local config = {}

config.color_scheme = 'Bitmute (terminal.sexy)'
config.window_background_opacity = 0.95
-- config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = false
config.hide_tab_bar_if_only_one_tab = true

config.text_background_opacity = 1
config.cursor_thickness = 1
config.default_cursor_style = 'BlinkingBar'
config.colors = {
   cursor_fg = 'white'
}
config.font_size = 11
config.font = wezterm.font_with_fallback {
   { family = 'JetBrains Mono', weight = 'Regular' },
   { family = 'Iosevka Term', weight = 'Medium' },
}

config.disable_default_key_bindings = true
config.keys = {
   {
      key = 'c',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.CopyTo "Clipboard"
   },
   {
      key = 'v',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.PasteFrom "Clipboard"
   },
   {
      key = 'RightArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection "Right"
   },
   {
      key = 'LeftArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection "Left"
   },
   {
      key = 'UpArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection "Up"
   },
   {
      key = 'DownArrow',
      mods = 'CTRL',
      action = wezterm.action.ActivatePaneDirection "Down"
   },
   {
      key = '(',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitHorizontal {},
   },
   {
      key = ')',
      mods = 'CTRL|SHIFT',
      action = wezterm.action.SplitVertical {},
   },

}

config.inactive_pane_hsb = {
   saturation = 0.9,
   brightness = 0.9
}



return config
