---@class CustomModule
local M = {}

---@return nil
M.open_and_insert = function(greeting)
  -- Open the file run.sh                                                                                 
  vim.cmd('edit run.sh')                                                                                  
                                                                                                            
  -- Ensure the buffer is loaded                                                                          
  vim.api.nvim_buf_set_lines(0, 3, 3, false, {"--forcerun doit"})                                         
                                                                                                            
  -- Optionally, save the file after the modification                                                     
  vim.cmd('write') 
end

return M
