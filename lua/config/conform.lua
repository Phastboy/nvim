local options = {
	formatters_by_ft = {
		lua = { "stylua" },
		css = { "prettier" },
		html = { "prettier" },
		markdown = { "prettier" },
		typescript = { "prettier" },
		javascript = { "prettier" },
	},

	format_on_save = {
		timeout_ms = 2000,
		lsp_fallback = true,
	},
}

return options
