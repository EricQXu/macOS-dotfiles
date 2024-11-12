local wezterm = require("wezterm")
local mux = wezterm.mux

local config = wezterm.config_builder()

local act = wezterm.action
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

--[[
wezterm.on("gui-startup", function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)
--]]

config = {
	automatically_reload_config = true,
	window_close_confirmation = "NeverPrompt",
	-- window_decorations = "TITLE | RESIZE", -- disable the title bar but enable the resizable border
	window_decorations = "RESIZE|MACOS_FORCE_ENABLE_SHADOW",
	default_cursor_style = "BlinkingBlock",
	color_scheme = "Firefly Traditional",
	font_size = 17,
	window_background_opacity = 0.718, --0.55
	macos_window_background_blur = 17, --36

	-- tab bar config pt.i
	enable_tab_bar = true, 
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
	tab_max_width = 32,
	
	-- enables hyperlinks
	hyperlink_rules = {
		{
			regex = "\\b\\w+://(?:[\\w.-]+)(?:(?:\\.[a-z]{2,15}\\S*)|(?::\\d{1,5}))\\b",
			format = "$0",
		}
	},
	
	-- keyboard remap
	keys = {
		{
			key = 'RightArrow',
    		mods = 'OPT',
    		action = wezterm.action.SendKey {
				key = 'w',
				mods = 'ALT',
			}
		},
		{
			key = 'LeftArrow',
    		mods = 'OPT',
    		action = wezterm.action.SendKey {
				key = 'b',
				mods = 'ALT',
			}
		},
		{
    		key = "F",
    		mods = "CMD|CTRL",
    		action = wezterm.action.ToggleFullScreen,
  		}
	},

	colors = {
		background = "#1e1e2d",
	}
}

-- tab bar config pt.ii
for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = 'ALT',
		action = act.ActivateTab(i - 1),
	})
end

local function getTabTitle(tab_info)
	local processName = tab_info.active_pane.foreground_process_name
	return string.gsub(processName, '(.*[/\\])(.*)', '%2')
end

wezterm.on(
	'format-tab-title',
	function(tab, tabs, panes, config, hover, max_width)
		local active_background = "#3e4452"
		local active_foreground = "#aab2bf"
		local inactive_background = "#282c34"
		local inactive_foreground = "#aab2bf"
		local transparent = "rgba(0,0,0,0)"
		local title = getTabTitle(tab)
		local index = tab.tab_index + 1
		local isFirst = index == 1
		local isLast = index == #tabs and #tabs ~= 0
		title = wezterm.truncate_right(title, max_width - 2)

		local items = {}

		if tab.is_active then
			table.insert(items, { Background = { Color = active_background } })
			table.insert(items, { Foreground = { Color = active_foreground } })
			table.insert(items, { Text = " " .. index .. "  " .. title .. " " })

			if isFirst then
				if #tabs > 1 then
					table.insert(items, { Background = { Color = inactive_background } })
					table.insert(items, { Foreground = { Color = active_background } })
				else
					table.insert(items, { Background = { Color = transparent } })
					table.insert(items, { Foreground = { Color = active_background } })
				end
			end

			if isLast then
				table.insert(items, { Background = { Color = transparent } })
				table.insert(items, { Foreground = { Color = active_background } })
			else
				table.insert(items, { Background = { Color = inactive_background } })
				table.insert(items, { Foreground = { Color = active_background } })
			end

			table.insert(items, { Text = SOLID_RIGHT_ARROW })
		else
			table.insert(items, { Background = { Color = active_background } })
			table.insert(items, { Foreground = { Color = active_foreground } })
			table.insert(items, { Background = { Color = inactive_background } })
			table.insert(items, { Foreground = { Color = inactive_foreground } })
			table.insert(items, { Text = " " .. index .. "  " .. title .. " " })

			if isLast then
				table.insert(items, { Background = { Color = transparent } })
				table.insert(items, { Foreground = { Color = inactive_background } })
			else
				-- Check if the next tab is active
				if index - 1 < #tabs then
					local nextTab = tabs[index + 1]
					if nextTab.is_active then
						table.insert(items, { Background = { Color = active_background } })
						table.insert(items, { Foreground = { Color = inactive_background } })
					else
						table.insert(items, { Background = { Color = inactive_background } })
						table.insert(items, { Foreground = { Color = inactive_background } })
					end
					-- else
					-- table.insert(items, { Background = { Color = inactive_background } })
					-- table.insert(items, { Foreground = { Color = active_background } })
				end
			end
			table.insert(items, { Text = SOLID_RIGHT_ARROW })
		end

		return items
	end
)

return config
