local M = {}

function M.setup()
	local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	-- ASCII Header
	local header = {
		"                                   ",
		"                                   ",
		"   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣭⣿⣶⣿⣦⣼⣆         ",
		"    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
		"          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷⠄⠄⠄⠄⠻⠿⢿⣿⣧⣄     ",
		"           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
		"          ⢠⣿⣿⣿⠈  ⠡⠌⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
		"   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘⠄ ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
		"  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
		" ⣠⣿⠿⠛⠄⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
		" ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇⠄⠛⠻⢷⣄ ",
		"      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
		"       ⠻⣿⣿⣿⣿⣶⣄  ⣹⣿⣿⣿⡟⠄    ⣠⣾⣿⣿⡟     ",
		"          ⠈⠛⢿⣿⣿⣿⣾⣤⣤⣴⣿⣿⠿⠋⠁     ⢻⣿⣿⣇    ",
		"                                   ",
		"                                   ",
	}

	-- Buttons
	local buttons = {
		type = "group",
		val = {
			dashboard.button("f", "  Find File", "<cmd>Telescope find_files<cr>"),
			dashboard.button("r", "  Recent Files", "<cmd>Telescope oldfiles<cr>"),
			dashboard.button("t", "  Find Text", "<cmd>Telescope live_grep<cr>"),
			dashboard.button("s", "  Sessions", "<cmd>SessionManager load_session<cr>"),
			dashboard.button("c", "  Config", "<cmd>e $MYVIMRC<cr>"),
			dashboard.button("q", "  Quit", "<cmd>qa<cr>"),
		},
		opts = {
			spacing = 1,
			hl = "AlphaButtons",
		},
	}

	-- Footer
	local footer = function()
		local version = " v" .. vim.version().major .. "." .. vim.version().minor .. "." .. vim.version().patch
		local plugins = " " .. #vim.tbl_keys(require("lazy").plugins()) .. " plugins"
		return version .. "  " .. plugins
	end

	-- Layout
	dashboard.config.layout = {
		{ type = "padding", val = 2 },
		{ type = "text", val = header, opts = { hl = "AlphaHeader", position = "center" } },
		{ type = "padding", val = 2 },
		buttons,
		{ type = "padding", val = 2 },
		{ type = "text", val = footer(), opts = { hl = "AlphaFooter", position = "center" } },
	}

	alpha.setup(dashboard.config)
end

return M
