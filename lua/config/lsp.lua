local M = {}

function M.setup()
	-- Setup Mason first
	require("mason").setup({
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	})

	-- Configure LSP servers
	require("mason-lspconfig").setup({
		ensure_installed = {
			"jsonls",
			"bashls",
		},
		automatic_installation = true,
	})

	local function setup_lsp(lsp_name)
		require("lspconfig")[lsp_name].setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			on_attach = function(client, bufnr)
				-- client.server_capabilities.documentFormattingProvider = false
				require("config.lsp_keymaps").set_lsp_keymaps(bufnr)
			end,
		})
	end

	setup_lsp("jsonls")
	setup_lsp("bashls")
end

return M
