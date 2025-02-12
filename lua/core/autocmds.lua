local autocmd = vim.api.nvim_create_autocmd

-- Highlight text on yank
autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
	end,
})

-- Enable spellcheck only for markdown & text files
autocmd("FileType", {
	pattern = { "markdown", "text" },
	callback = function()
		vim.opt.spell = true
	end,
})
