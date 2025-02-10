local M = {}

function M.setup()
	local lint = require("lint")

	lint.linters_by_ft = {
		javascript = { "eslint_d" },
		typescript = { "eslint_d" },
		javascriptreact = { "eslint_d" },
		typescriptreact = { "eslint_d" },
		json = { "jsonlint" },
		markdown = { "markdownlint" },
	}

	-- Lint on save
	vim.api.nvim_create_autocmd({ "BufWritePost" }, {
		callback = function()
			lint.try_lint()
		end,
	})

	-- Keymaps
	vim.keymap.set("n", "<leader>ll", function()
		lint.try_lint()
	end, { desc = "Trigger Linting" })
end

return M
