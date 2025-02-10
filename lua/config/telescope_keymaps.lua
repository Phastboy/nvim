local M = {}

function M.setup()
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
  vim.keymap.set("n", "<leader>fe", extensions.file_browser.file_browser, { desc = "File Browser" })

  -- Custom searches
  vim.keymap.set("n", "<leader>fw", function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
  end, { desc = "Grep Word" })
end

return M
