local autocmd = vim.api.nvim_create_autocmd

-- Example: Highlight text on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})
-- Add more auto commands as needed
