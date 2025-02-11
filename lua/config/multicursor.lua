local M = {}

function M.setup()
	local mc = require("multicursor-nvim")
	mc.setup() -- Call the plugin’s default setup (or pass your custom options here)

	-- Load keymaps separately
	require("config.multicursor_keymaps").setup(mc)
end

return M
