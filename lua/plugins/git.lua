return {
	{
		"lewis6991/gitsigns.nvim",
		event = "BufReadPre",
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "│" },
					change = { text = "│" },
					delete = { text = "󰍵" },
					topdelete = { text = "‾" },
					changedelete = { text = "~" },
					untracked = { text = "┆" },
				},
				on_attach = function(bufnr)
					require("config.git_keymaps").setup()
				end,
			})
		end,
	},
	{
		"f-person/git-blame.nvim",
		event = "BufReadPre",
		config = function()
			vim.g.gitblame_enabled = 0 -- Disable by default
			require("config.git_keymaps").setup()
		end,
	},
}
