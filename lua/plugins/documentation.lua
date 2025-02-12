return {
	{
		"danymat/neogen",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"L3MON4D3/LuaSnip",
		},
		config = function()
			require("neogen").setup()
			require("config.documentation_keymaps").setup()
		end,
	},
}
