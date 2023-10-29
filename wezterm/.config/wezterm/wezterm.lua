-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

term = "wezterm"

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Bamboo'
config.enable_tab_bar = false
-- config.window_background_opacity = 0.95
config.font = wezterm.font 'BerkeleyMono Nerd Font'
config.font_size = 14
config.window_decorations = "RESIZE"

local mux = wezterm.mux

wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

-- and finally, return the configuration to wezterm
return config
