local M = {}

function M.set_lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts) -- Code Actions
  vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts) -- Show diagnostics
  vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- Go to previous diagnostic
  vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- Go to next diagnostic
end

return M
