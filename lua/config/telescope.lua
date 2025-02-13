local M = {}

function M.setup()
	local telescope = require("telescope")
	local actions = require("telescope.actions")

	telescope.setup({
		defaults = {
			prompt_prefix = "🔍 ",
			selection_caret = " ",
			mappings = {
				i = {
					["<C-j>"] = actions.move_selection_next,
					["<C-k>"] = actions.move_selection_previous,
					["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
				},
			},
			file_ignore_patterns = {
				"node_modules",
				".git",
				".cache",
				"%.o",
				"%.a",
				"%.out",
				"%.class",
				"%.pdf",
				"%.mkv",
				"%.mp4",
				"%.zip",
				"__pycache__",
				"venv",
				"%.log",
				"%.DS_Store",
			},
		},
		extensions = {
			file_browser = {
				theme = "dropdown",
				hijack_netrw = true,
				hidden = true,
			},
			["ui-select"] = {
				require("telescope.themes").get_dropdown(),
			},
		},
	})

	-- Load extensions
	telescope.load_extension("file_browser")
	telescope.load_extension("ui-select")

	local builtin = require("telescope.builtin")
	local extensions = require("telescope").extensions

	-- Code navigation
	vim.keymap.set("n", "<leader>cd", builtin.lsp_definitions, { desc = "Goto Definition" })
	vim.keymap.set("n", "<leader>cr", builtin.lsp_references, { desc = "References" })
	vim.keymap.set("n", "<leader>cs", builtin.lsp_document_symbols, { desc = "Document Symbols" })

	-- File browser
	vim.keymap.set("n", "<C-f>", extensions.file_browser.file_browser, { desc = "File Browser" })
end

return M
