local autocmd = vim.api.nvim_create_autocmd

-- Example: Highlight text on yank
autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
  end,
})

-- Create autocmd for LSP keymaps
autocmd('LspAttach', {
  callback = function(args)
    lsp_keymaps(args.buf)
  end
})

autocmd("BufWritePre", {
  pattern = { "*.js", "*.ts", "*.jsx", "*.tsx" },
  callback = function()
    vim.lsp.buf.format({
      filter = function(client)
        return client.name == "null-ls"
      end,
      async = false,
    })
  end,
})

-- Close Oil if it's the last buffer
autocmd("BufEnter", {
  callback = function()
    if vim.bo.filetype == "oil" and #vim.fn.getbufinfo({ buflisted = 1 }) == 1 then
      vim.cmd("quit")
    end
  end,
})
