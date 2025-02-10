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
	-- In lua/config/lsp.lua
	require("mason-lspconfig").setup({
		ensure_installed = {
			"jsonls",
			"bashls",
		},
		automatic_installation = true,
	})

	local lspconfig = require("lspconfig")
	local keymaps = require("config.lsp_keymaps")
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	-- Common LSP setup
	local on_attach = function(client, bufnr)
		client.server_capabilities.documentFormattingProvider = false
		keymaps.set_lsp_keymaps(bufnr)
	end
end

return M
