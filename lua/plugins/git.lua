return {
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		config = function()
			require("gitsigns").setup({
				require("config.git_keymaps").setup(),
			})
		end,
	},
	{
		"f-person/git-blame.nvim",
		event = "VeryLazy",
	},
}
