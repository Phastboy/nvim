return {
	{
		"stevearc/conform.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
		event = { "BufWritePre" },
		config = function()
			require("config.formatting").setup()
		end,
	},
	{
		"mfussenegger/nvim-lint",
		event = { "BufWritePost" },
		config = function()
			require("config.linting").setup()
		end,
	},
}
