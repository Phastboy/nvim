return {
	{
		"akinsho/toggleterm.nvim",
    event="BufReadPost",
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<c-t>]],
				direction = "float",
			})
		end,
	},
}
