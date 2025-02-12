return {
	{
		"danymat/neogen",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"L3MON4D3/LuaSnip",
		},
		cmd = "Neogen", -- Loads only when `Neogen` command is used
		keys = {
			{ "<leader>dg", "<cmd>Neogen<CR>", desc = "Generate Docs (default)" },
			{ "<leader>df", "<cmd>Neogen func<CR>", desc = "Generate Function Docs" },
			{ "<leader>dc", "<cmd>Neogen class<CR>", desc = "Generate Class Docs" },
			{ "<leader>dt", "<cmd>Neogen type<CR>", desc = "Generate Type Docs" },
		},
		config = function()
			require("neogen").setup()
		end,
	},
}
