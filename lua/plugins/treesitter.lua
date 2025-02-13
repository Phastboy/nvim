return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
    event="BufRead",
		opts = {
			ensure_installed = {
				"lua",
				"typescript",
				"javascript",
				"json",
				"yaml",
				"markdown",
        "markdown_inline",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
		config = function(_, opts)
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
}
