-- Pull in the wezterm API
local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.font = wezterm.font 'DaddyTimeMono Nerd Font'

-- config.initial_cols = ""
-- config.initial_rows = ""

config.font_size = 10
config.enable_tab_bar = false
config.window_decorations = "RESIZE"
config.window_background_image = "/users/jose.nascimento/Pictures/Terminal_Wallpaper/liminal-space.png"
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.3,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}
-- config.window_content_alignment = {
--   horizontal = 'Center',
--   vertical = 'Center',
-- }

-- Finally, return the configuration to wezterm:
return config
