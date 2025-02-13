local M = {}

function M.setup()
	local map = vim.keymap.set
	local neogen = require("neogen")

	-- Documentation Generation
	map({ "n", "i" }, "<leader>dg", function()
		neogen.generate({ type = "func" }) -- Function docs
	end, { desc = "Generate Function Docs" })

	map("n", "<leader>dc", function()
		neogen.generate({ type = "class" }) -- Class docs
	end, { desc = "Generate Class Docs" })

	map("n", "<leader>dt", function()
		neogen.generate({ type = "type" }) -- Type docs
	end, { desc = "Generate Type Docs" })

	-- Documentation Navigation
	map("n", "gD", function()
		require("telescope.builtin").lsp_document_symbols({
			symbols = { "function", "class", "interface" },
		})
	end, { desc = "Navigate Documentation" })
end

return M
