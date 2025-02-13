return {
  "pmizio/typescript-tools.nvim",
  ft={"typescript", "typescriptreact", "javascript"},
  dependencies = {
    "nvim-lua/plenary.nvim",
    "neovim/nvim-lspconfig"
  },
  opts = {
      on_attach = function(client, bufnr)
        require("config.lsp").set_lsp_keymaps(bufnr)
      end,
      settings = {
        tsserver_path = vim.fn.exepath("tsserver"),
        tsserver_plugins = {
          "@styled/typescript-styled-plugin",
        },
      },
  },
}
