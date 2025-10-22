-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'DaddyTimeMono Nerd Font'

config.initial_cols = 100
config.initial_rows = 10
config.font_size = 14
config.enable_tab_bar = false
config.window_decorations = "TITLE"
config.window_background_opacity = 0.3

config.window_content_alignment = {
  horizontal = 'Center',
  vertical = 'Center',
}

return config
