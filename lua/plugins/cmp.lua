return {
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"onsails/lspkind.nvim",
		},
		event = "InsertEnter", -- Load only when inserting text
		config = function()
			require("config.cmp").setup()
		end,
	},
	{
		"hrsh7th/cmp-cmdline", -- Lazy-load cmdline completion
		event = "CmdlineEnter",
	},
}
