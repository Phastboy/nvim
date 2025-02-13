local M = {}

function M.setup()
  local telescope = require("telescope")
  local actions = require("telescope.actions")

  telescope.setup({
    defaults = {
      prompt_prefix = "🔍 ",
      selection_caret = " ",
      -- path_display = { "smart" },
      path_display = { "truncate" },
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
        },
      },
      layout_strategy = "horizontal",
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
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
      },
      winblend = 0,
      border = {},
      color_devicons = true,
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

	-- File operations
	vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
	vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
	vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find Buffers" })
	vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Help Tags" })
	vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Recent Files" })

	-- Git integration
	vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git Commits" })
	vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "Git Status" })

	-- Code navigation
	vim.keymap.set("n", "<leader>cd", builtin.lsp_definitions, { desc = "Goto Definition" })
	vim.keymap.set("n", "<leader>cr", builtin.lsp_references, { desc = "References" })
	vim.keymap.set("n", "<leader>cs", builtin.lsp_document_symbols, { desc = "Document Symbols" })

	-- File browser
	vim.keymap.set("n", "<C-e>", extensions.file_browser.file_browser, { desc = "File Browser" })

	-- Custom searches
	vim.keymap.set("n", "<leader>fw", function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") })
	end, { desc = "Grep Word" })
end

return M
