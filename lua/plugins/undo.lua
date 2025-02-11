return {
	{
		"mbbill/undotree",
		keys = {
			{ "<leader>uu", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undo Tree" },
			{ "<leader>uf", "<cmd>UndotreeFocus<CR>", desc = "Focus Undo Tree" },
		},
		config = function()
			vim.g.undotree_SetFocusWhenToggle = 1
			vim.g.undotree_WindowLayout = 3
			vim.g.undotree_ShortIndicators = 1
			vim.g.undotree_DiffAutoOpen = 0
			vim.g.undotree_DiffpanelHeight = 10

			-- Load keymaps after plugin setup
			require("config.undo_keymaps").setup()
		end,
	},
}
