-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'MaterialDesignColors'

config.font = wezterm.font 'Hack'
config.font_size = 13

config.keys  = {
    {
        key = 'd',
        mods = 'SUPER',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' }
    },
    {
        key = 'd',
        mods = 'SUPER|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' }
    },
    {
	key = 'LeftArrow',
	mods = 'OPT',
	action = wezterm.action.{ SendString="\x1bb" }
    }
    {
	key = 'RightArrow',
	mods = 'OPT',
	action = wezterm.action.{ SendString="\x1bf" }
    }

}

-- and finally, return the configuration to wezterm
return config

