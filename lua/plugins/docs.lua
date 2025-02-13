return {
	{
		"danymat/neogen",
    event="BufReadPost",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("neogen").setup()
			require("config.docs").setup()
		end,
	},
}
