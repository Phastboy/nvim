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
  keymap('n', '<leader>f', vim.lsp.buf.format, opts)
keymap('n', '<leader>f', function()
  vim.lsp.buf.format({
    filter = function(client)
      return client.name == "null-ls"
    end,
    async = true,
  })
end, { desc = "Format with null-ls" })
end

-- lua/core/keymaps.lua
-- Oil.nvim file explorer
keymap("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory in Oil" })
keymap("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open file explorer" })

-- Optional: Close Oil automatically when opening a file
vim.api.nvim_create_autocmd("FileType", {
  pattern = "oil",
  callback = function()
    vim.keymap.set("n", "<Esc>", "<CMD>q<CR>", { buffer = true })
  end,
})
