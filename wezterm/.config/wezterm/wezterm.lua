local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
  automatically_reload_config = true,
  enable_tab_bar = false,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  color_scheme = "Catppuccin Mocha",
  font = wezterm.font("Jetbrains Mono", { weight = "Bold" }),

  -- Workaround for keys that do not work for Norwegian keyboard
  send_composed_key_when_left_alt_is_pressed = true,
  keys = {
    -- in "phys:7" means "the key in the same physical position as 7 in an ANSI standard US keyboard"
    {key="phys:7", mods="ALT", action="DisableDefaultAssignment"},
    {key="phys:8", mods="ALT", action="DisableDefaultAssignment"},
    {key="phys:9", mods="ALT", action="DisableDefaultAssignment"},
  }
}

return config
