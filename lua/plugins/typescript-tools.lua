return {
	{
		"pmizio/typescript-tools.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"neovim/nvim-lspconfig",
		},
		ft = { "typescript", "typescriptreact" },
		config = function()
			require("typescript-tools").setup({
				on_attach = function(client, bufnr)
					require("config.lsp_keymaps").set_lsp_keymaps(bufnr)
				end,
				settings = {
					tsserver_path = vim.fn.exepath("tsserver"),
					tsserver_plugins = {
						"@styled/typescript-styled-plugin",
					},
				},
			})
		end,
	},
}
