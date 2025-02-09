return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
        "lua", "python", "javascript", "typescript", "tsx", 
        "html", "css", "json", "markdown" 
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
