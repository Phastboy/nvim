-- lua/config/formatting.lua
local M = {}

function M.setup()
	local conform = require("conform")

	conform.setup({
		formatters_by_ft = {
			javascript = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			html = { "prettier" },
			css = { "prettier" },
			markdown = { "prettier" },
			lua = { "stylua" },
		},
		format_on_save = {
			timeout_ms = 2000,
			lsp_fallback = true,
			async = true,
		},
		formatters = {
			prettier = {
				command = "prettier",
				args = { "--stdin-filepath", "$FILENAME" },
				cwd = require("conform.util").root_file({ ".prettierrc", ".prettierrc.json" }),
			},
		},
	})

	vim.keymap.set("n", "<leader>fp", function()
		conform.format({ async = true })
	end, { desc = "Format File" })
end

return M
