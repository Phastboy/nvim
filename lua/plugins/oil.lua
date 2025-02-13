return {
	{
		"stevearc/oil.nvim",
		-- lazy = false, -- Load immediately since it replaces netrw
    dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
		config = function()
			require("config.oil").setup()
		end,
	},
}
