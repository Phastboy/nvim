-- lua/core/keymaps.lua
local keymap = vim.keymap.set
-- Set leader key
vim.g.mapleader = " "
-- Example keymap: Save file with <leader>w
keymap("n", "<leader>w", ":w<CR>", { desc = "Save file" })

-- LSP Keymaps
local lsp_keymaps = function(bufnr)
  local opts = { buffer = bufnr, silent = true }
  keymap('n', 'gd', vim.lsp.buf.definition, opts)
  keymap('n', 'K', vim.lsp.buf.hover, opts)
  keymap('n', '<leader>rn', vim.lsp.buf.rename, opts)
  keymap('n', '<leader>ca', vim.lsp.buf.code_action, opts)
  keymap('n', 'gr', vim.lsp.buf.references, opts)
  keymap('n', '<leader>f', vim.lsp.buf.format, opts)
end

-- Create autocmd for LSP keymaps
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    lsp_keymaps(args.buf)
  end
})
