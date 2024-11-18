return {
    {
      "nvim-telescope/telescope.nvim",
      cmd = "Telescope",
      requires = { 
        {"nvim-lua/plenary.nvim"},
        {"nvim-telescope/telescope-file-browser.nvim"}
      },
      config = function()
        local telescope = require('telescope')
        telescope.setup {
          -- telescope configuration here
        }
        -- Load the file browser extension
        telescope.load_extension('file_browser')
      end
    },
    {
      "tpope/vim-fugitive",
      cmd = { "Git", "G" }
    },
  }