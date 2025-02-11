return {
	{
		"jake-stewart/multicursor.nvim",
		lazy = true,
		branch = "1.0",
		config = function()
			require("config.multicursor").setup()
		end,
	},
}
