return {
	{
		"ahmedkhalf/project.nvim",
		dependencies = {
			"nvim-telescope/telescope.nvim",
			"folke/persistence.nvim",
		},
		config = function()
			-- Project detection
			require("project_nvim").setup({
				detection_methods = { "pattern", "lsp" },
				patterns = { ".git", "package.json", "tsconfig.json" },
				ignore_lsp = { "null-ls" },
				scope_chdir = "tab",
				silent_chdir = false,
			})

			-- Session management
			require("persistence").setup({
				dir = vim.fn.expand(vim.fn.stdpath("state") .. "/sessions/"),
				options = { "buffers", "curdir", "tabpages", "winsize" },
				pre_save = function()
					vim.cmd("LspStop") -- Cleanly stop LSP clients
				end,
			})

			-- Load project.nvim telescope extension
			require("telescope").load_extension("projects")
			require("config.workspace_keymaps").setup()
		end,
	},
}
