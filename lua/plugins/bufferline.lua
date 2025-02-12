return {
	{
		"akinsho/bufferline.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		event = "BufReadPre", -- Load on buffer read
		config = function()
			require("config.bufferline").setup()
		end,
	},
}
