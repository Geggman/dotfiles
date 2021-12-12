local lfs = require("lfs")
local M = {}

-- Create a todo markdown file
M.create_todo = function()
  if (lfs.attributes("/home/guy/.todo/","mode") ~= "directory") then
    vim.cmd("!mkdir $HOME/.todo/")
  end
  local filename = vim.fn.input("filename: ")
  local path = '$HOME/.todo' .. '/' .. filename
  if (lfs.attributes("/home/guy/.todo" .. '/' .. filename .. '.md', "mode") == "file") then
    print("File exists")
    return 1
  else
    vim.cmd("!touch " .. path)
  end
end

return M




