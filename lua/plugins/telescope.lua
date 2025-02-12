return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			cmd = "Telescope file_browser",
		},
		config = function()
			require("config.telescope").setup()
			require("config.telescope_keymaps").setup()
		end,
	},
}
