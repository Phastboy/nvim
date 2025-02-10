return {
	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("config.alpha").setup()
			require("config.alpha_keymaps").setup()
		end,
		lazy = false,
	},
}
