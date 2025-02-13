return {
	{
		"jake-stewart/multicursor.nvim",
    event="BufReadPost",
		branch = "1.0",
		config = function()
			require("config.multicursor").setup()
		end,
	},
}
