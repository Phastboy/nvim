local M = {}

function M.setup()
	local map = vim.keymap.set
	local package_info = require("package-info")

	-- Basic package management
	map("n", "<leader>np", package_info.show, { desc = "Show Package Info" })
	map("n", "<leader>nu", package_info.update, { desc = "Update Package" })
	map("n", "<leader>nd", package_info.delete, { desc = "Delete Package" })
	map("n", "<leader>ni", package_info.install, { desc = "Install Package" })
	map("n", "<leader>nr", package_info.reinstall, { desc = "Reinstall Packages" })

	-- Telescope integration
	map("n", "<leader>ns", function()
		require("telescope").extensions.package_info.outdated()
	end, { desc = "Search Outdated Packages" })
end

return M
