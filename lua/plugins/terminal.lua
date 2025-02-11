return {
	{
		"akinsho/toggleterm.nvim",
		lazy = true,
		config = function()
			require("toggleterm").setup({
				open_mapping = [[<c-t>]],
				direction = "float",
			})
		end,
	},
}
