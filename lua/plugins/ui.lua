return {
	{ -- Better diagnostics list
		"folke/trouble.nvim",
		opts = { use_diagnostic_signs = true },
		keys = {
			{ "<leader>xx", "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
			{ "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Issues" },
			{ "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Issues" },
		},
	},
	{ -- Highlight TODO comments
		"folke/todo-comments.nvim",
		opts = {
			keywords = {
				FIX = { icon = " ", color = "error" },
				TODO = { icon = " ", color = "info" },
			},
		},
	},
}
