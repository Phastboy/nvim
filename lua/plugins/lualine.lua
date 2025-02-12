return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "BufReadPre",
		config = function()
			require("config.lualine").setup()
		end,
	},
}
