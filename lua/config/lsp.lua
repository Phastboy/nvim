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
			"ts_ls", -- Correct official server name
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

		-- Format on save with conform.nvim instead
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end,
		})
	end

	-- Configure TypeScript LSP
	-- Keep using tsserver as the server name
	lspconfig.ts_ls.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			typescript = {
				inlayHints = {
					includeInlayParameterNameHints = "all",
					includeInlayFunctionParameterTypeHints = true,
					includeInlayVariableTypeHints = true,
				},
				format = {
					indentSize = vim.o.shiftwidth,
					convertTabsToSpaces = vim.o.expandtab,
					tabSize = vim.o.tabstop,
				},
			},
			javascript = {
				format = {
					indentSize = vim.o.shiftwidth,
					convertTabsToSpaces = vim.o.expandtab,
					tabSize = vim.o.tabstop,
				},
			},
		},
	})

	-- In lua/config/lsp.lua
	lspconfig.eslint.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			codeAction = {
				disableRuleComment = {
					enable = true,
					location = "separateLine",
				},
				showDocumentation = {
					enable = true,
				},
			},
			codeActionOnSave = {
				enable = true,
				mode = "all",
			},
			format = false, -- Disable ESLint formatting in favor of conform
			validate = "on", -- Change to "on" if you want immediate validation
		},
	})
end

return M
