return {
	{
		"folke/todo-comments.nvim",
		event = "BufReadPost",
		opts = {},
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		event = "BufReadPost",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("config.telescope").setup()
		end,
	},
	{
		"rmagatti/auto-session",
		opts = {
			log_level = "error",
			auto_session_suppress_dirs = { "~/Downloads", "/tmp" },
		},
	},
	"NvChad/nvcommunity",
	{ import = "nvcommunity.editor.treesittercontext" },
}
