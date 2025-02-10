local M = {}

function M.toggle()
  -- Check the current buffer's filetype
  if vim.bo.filetype == "oil" then
    -- If we're already in an Oil buffer, close it
    vim.cmd("bd!")  -- Force close the buffer
  else
    -- Otherwise, open Oil
    vim.cmd("Oil")
  end
end

return M
