local M = {}

function M.setup()
	local map = vim.keymap.set

	-- Project navigation
	map("n", "<leader>fp", "<cmd>Telescope projects<CR>", { desc = "Find Projects" })

	-- Session management
	map("n", "<leader>ss", function()
		require("persistence").save()
		vim.notify("Workspace saved", vim.log.levels.INFO)
	end, { desc = "Save Workspace" })

	map("n", "<leader>sl", function()
		require("persistence").load()
		vim.notify("Workspace loaded", vim.log.levels.INFO)
	end, { desc = "Load Workspace" })

	map("n", "<leader>sd", function()
		require("persistence").stop()
		vim.notify("Workspace detached", vim.log.levels.WARN)
	end, { desc = "Detach Workspace" })
end

return M
