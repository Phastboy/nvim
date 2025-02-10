local autocmd = vim.api.nvim_create_autocmd

-- Highlight text on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
