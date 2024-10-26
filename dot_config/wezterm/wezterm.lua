-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.scrollback_lines = 50000
config.font = wezterm.font("JetBrainsMono Nerd Font")
-- config.font = wezterm.font("Maple Mono NF")
config.font_size = 15.0
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.color_scheme = "Catppuccin Mocha"

config.macos_window_background_blur = 30
config.window_background_opacity = 0.95
config.window_decorations = "RESIZE"
config.window_padding = {
	bottom = 0,
}
config.colors = {
	background = "#0e0e0e",
	cursor_fg = "#0e0e0e",
	selection_fg = "#0e0e0e",
}
config.tab_max_width = 25
-- config.send_composed_key_when_left_alt_is_pressed = true

local function is_vim(pane)
	-- this is set by the plugin, and unset on ExitPre in Neovim
	return pane:get_user_vars().IS_NVIM == "true"
end

local direction_keys = {
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

local function split_nav(resize_or_move, key)
	return {
		key = key,
		mods = resize_or_move == "resize" and "META" or "CTRL",
		action = wezterm.action_callback(function(win, pane)
			if is_vim(pane) then
				-- pass the keys through to vim/nvim
				win:perform_action({
					SendKey = { key = key, mods = resize_or_move == "resize" and "META" or "CTRL" },
				}, pane)
			else
				if resize_or_move == "resize" then
					win:perform_action({ AdjustPaneSize = { direction_keys[key], 3 } }, pane)
				else
					win:perform_action({ ActivatePaneDirection = direction_keys[key] }, pane)
				end
			end
		end),
	}
end

config.leader = { mods = "CTRL", key = "phys:a", timeout_milliseconds = 2000 }
config.keys = {
	split_nav("move", "h"),
	split_nav("move", "j"),
	split_nav("move", "k"),
	split_nav("move", "l"),
	{
		mods = "LEADER",
		key = "w",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		mods = "LEADER",
		key = "n",
		action = wezterm.action.ActivateTabRelative(1),
	},
	{
		mods = "LEADER",
		key = "p",
		action = wezterm.action.ActivateTabRelative(-1),
	},
	{
		mods = "LEADER",
		key = "h",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "v",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		mods = "LEADER",
		key = "a",
		action = wezterm.action.ActivateLastTab,
	},
	{
		mods = "LEADER",
		key = "z",
		action = wezterm.action.TogglePaneZoomState,
	},
}

wezterm.on("update-right-status", function(window, _)
	local SOLID_LEFT_ARROW = ""
	local ARROW_FOREGROUND = { Foreground = { Color = "#c6a0f6" } }

	local prefix = ""
	if window:leader_is_active() then
		prefix = " " .. utf8.char(0x1f30a) -- OCEAN WAVE
		SOLID_LEFT_ARROW = utf8.char(0xe0b2)
	end

	if window:active_tab():tab_id() ~= 0 then
		ARROW_FOREGROUND = { Foreground = { Color = "#1e2030" } }
	end

	window:set_left_status(wezterm.format({
		{ Background = { Color = "#b7bdf8" } },
		{ Text = prefix },
		ARROW_FOREGROUND,
		{ Text = SOLID_LEFT_ARROW },
	}))
end)

local function split(input, delimiter)
	local result = {}
	for match in (input .. delimiter):gmatch("(.-)" .. delimiter) do
		table.insert(result, match)
	end
	return result
end

local function starts_with(str, prefix)
	return string.sub(str, 1, #prefix) == prefix
end

local function tab_title(tab_info)
	local title = tab_info.tab_title
	-- if the tab title is explicitly set, take that
	if title and #title > 0 then
		return title
	end
	-- Otherwise, use the title from the active pane
	-- in that tab
	return tab_info.active_pane.title
end

wezterm.on("format-tab-title", function(tab)
	local title = tab_title(tab)
	local title_path_elements = split(title, "/")
	local final_title = ""

	if #title_path_elements > 1 then
		final_title = final_title .. title_path_elements[#title_path_elements]
		if starts_with(title, "nvim") then
			final_title = "nvim(" .. final_title .. ")"
		end
	else
		final_title = title
	end

	return " " .. (tab.tab_index + 1) .. ": " .. final_title .. " "
end)

return config
