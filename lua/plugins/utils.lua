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
	"NvChad/nvcommunity",
	{ import = "nvcommunity.editor.treesittercontext" },
}
