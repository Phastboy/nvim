local M = {}

function M.set_lsp_keymaps(bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  local set = vim.keymap.set

  -- Base LSP
  set("n", "gd", vim.lsp.buf.definition, vim.tbl_extend("force", opts, {
    desc = "Goto Definition"
  }))
  set("n", "K", vim.lsp.buf.hover, vim.tbl_extend("force", opts, {
    desc = "Hover Documentation"
  }))
  set("n", "gr", vim.lsp.buf.references, vim.tbl_extend("force", opts, {
    desc = "Goto References"
  }))
  set("n", "<leader>rn", vim.lsp.buf.rename, vim.tbl_extend("force", opts, {
    desc = "Rename"
  }))
  set("n", "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, {
    desc = "Code Action"
  }))

  -- TS Tools
  set("n", "<leader>to", "<cmd>TSToolsOrganizeImports<cr>", vim.tbl_extend("force", opts, {
    desc = "Organize Imports"
  }))
  set("n", "<leader>tr", "<cmd>TSToolsRemoveUnused<cr>", vim.tbl_extend("force", opts, {
    desc = "Remove Unused"
  }))
  set("n", "<leader>ti", "<cmd>TSToolsAddMissingImports<cr>", vim.tbl_extend("force", opts, {
    desc = "Add Missing Imports"
  }))
  set("n", "<leader>tf", "<cmd>TSToolsFixAll<cr>", vim.tbl_extend("force", opts, {
    desc = "Fix All"
  }))
end

return M
