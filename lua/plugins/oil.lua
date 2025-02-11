return {
	{
		"stevearc/oil.nvim",
		lazy = false, -- Load immediately since it replaces netrw
		config = function()
			require("config.oil").setup()
		end,
	},
	{
		"refractalize/oil-git-status.nvim",

		dependencies = {
			"stevearc/oil.nvim",
		},

		config = true,
	},
}
