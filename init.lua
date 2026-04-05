local function load_plugins()
	local fn = vim.fn
	local plugin_dir = fn.stdpath("config") .. "/lua/plugins"

	for _, file in ipairs(fn.readdir(plugin_dir)) do
		if file:match(".lua$") then
			local plugin_name = file:sub(1, -5) -- Removes the .lua extension
			require("plugins." .. plugin_name)
		end
	end
end

local function load_settings()
	local fn = vim.fn
	local settings_dir = fn.stdpath("config") .. "/lua/settings"

	for _, file in ipairs(fn.readdir(settings_dir)) do
		if file:match(".lua$") then
			local setting_name = file:sub(1, -5) -- Removes the .lua extension
			require("settings." .. setting_name)
		end
	end
end

load_settings()
require("lazy-bootstrap")
load_plugins()
