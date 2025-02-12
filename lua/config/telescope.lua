local M = {}

function M.setup()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
		defaults = {
			prompt_prefix = "🔍 ",
			selection_caret = " ",
			file_ignore_patterns = {
				"node_modules",
				".git",
				".cache",
				"%.o",
				"%.a",
				"%.out",
				"%.class",
				"%.pdf",
				"%.mkv",
				"%.mp4",
				"%.zip",
			},
		},
		extensions = {
			file_browser = {
				theme = "dropdown",
				hijack_netrw = true,
				hidden = true,
			},
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	})

	-- Load extensions
	telescope.load_extension("file_browser")
	telescope.load_extension("ui-select")
end

return M
