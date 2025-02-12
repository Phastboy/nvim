return {
	{
		"neovim/nvim-lspconfig",
		event = "BufReadPre",
		dependencies = {
			{ "williamboman/mason.nvim", cmd = "Mason" },
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("config.lsp").setup()
		end,
	},
}
