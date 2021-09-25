local create_file = function()
  local filepath = vim.fn.input("Path: ") 
  local pwd = os.getenv("PWD")
  local path = pwd .. '/' .. filepath
  local file = io.open(path, 'w')
  file:write("")
  file:close()
  vim.cmd('e ' .. path)
end

create_file()
