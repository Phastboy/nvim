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
        "html",
        "css",
        "vim",
        "vimdoc",
			},
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
