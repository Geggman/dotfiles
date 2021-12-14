local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
   lspconfig = {
    cmd = {"/home/guy/lua-language-server/bin/Linux/lua-language-server", "-E", "/home/guy/lua-language-server/main.lua"},
    settings = {
      Lua = {
        diagnostics = {
          globals = {"vim" , "use", "use_rocks"}
        }
      }
    }
   },
})

local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup(luadev)
