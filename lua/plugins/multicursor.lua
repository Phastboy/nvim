return {
	{
		"jake-stewart/multicursor.nvim",
		branch = "1.0",
		keys = { "<leader>n", "<leader>N", "<leader>A" },
		config = function()
			require("config.multicursor").setup()
		end,
	},
}
