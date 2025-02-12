return {
	{
		"vuki656/package-info.nvim",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-telescope/telescope.nvim",
		},
		ft = "json",
		config = function()
			require("package-info").setup({
				colors = {
					up_to_date = "#3C4048", -- Grey
					outdated = "#d19a66", -- Orange
				},
				icons = {
					enable = true, -- Show npm icons
					style = {
						up_to_date = "|",
						outdated = "󰚰",
					},
				},
				hide_unstable_versions = true,
				package_manager = "npm",
			})

			-- Load telescope extension
			require("telescope").load_extension("package_info")
		end,
	},
}
