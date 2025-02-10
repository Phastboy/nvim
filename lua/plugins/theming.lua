return {
	{
		"folke/tokyonight.nvim", -- Lightweight & popular
		lazy = false, -- Load immediately
		priority = 1000, -- Load before other plugins
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},

	-- Alternative minimal themes (choose one)
	--[[
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({ 
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true 
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  {
    "rebelot/kanagawa.nvim",  -- Classic terminal look
    lazy = false,
    priority = 1000,
    config = function()
      require("kanagawa").setup({
        transparent = true,
      })
      vim.cmd.colorscheme("kanagawa")
    end,
  }
  --]]
}
