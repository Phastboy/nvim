local M = {}

function M.setup()
  -- Setup Mason first
  require("mason").setup({
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  })

  -- Configure LSP servers
  require("mason-lspconfig").setup({
    ensure_installed = {
      "ts_ls",       -- TypeScript/JavaScript
      "jsonls",         -- JSON
      "bashls",         -- Bash
    },
    automatic_installation = true,
  })

  local lspconfig = require("lspconfig")
  local keymaps = require("config.lsp_keymaps") -- Import keymaps

  -- Configure TypeScript LSP
  lspconfig.ts_ls.setup({
    on_attach = function(client, bufnr)
      client.server_capabilities.documentFormattingProvider = false -- Disable built-in formatting
      keymaps.set_lsp_keymaps(bufnr) -- Apply LSP keymaps
    end,
    flags = { debounce_text_changes = 150 },
  })
end

return M
