local autocmd = vim.api.nvim_create_autocmd

-- Highlight text on yank
autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#61afef" })
-- vim.api.nvim_set_hl(0, "AlphaButtons", { fg = "#98c379" })
-- vim.api.nvim_set_hl(0, "AlphaFooter", { fg = "#c678dd" })
