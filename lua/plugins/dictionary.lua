return {
	{
		"uga-rosa/cmp-dictionary",
		dependencies = "hrsh7th/nvim-cmp",
		config = function()
			require("cmp_dictionary").setup({
				paths = { "~/.local/share/dict/words" },
				exact_length = 2, -- Show similar matches
			})
		end,
	},
}
