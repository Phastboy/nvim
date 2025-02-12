return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost" }, -- Lazy-load on buffer open
		build = ":TSUpdate",
		opts = {
			ensure_installed = {
				"typescript",
				"javascript",
				"json",
				"yaml",
				"markdown",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
