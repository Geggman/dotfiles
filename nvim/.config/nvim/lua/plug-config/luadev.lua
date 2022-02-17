local luadev = require("lua-dev").setup({
  -- add any options here, or leave empty to use the default settings
   lspconfig = {
    cmd = {"/home/gegg/lua-language-server/bin/lua-language-server", "-E", "/home/gegg/lua-language-server/main.lua"},
    settings = {
      Lua = {
        diagnostics = {
          globals = {"vim","use","use_rocks"}
        }
      }
    }
   },
})

local lspconfig = require('lspconfig')
lspconfig.sumneko_lua.setup(luadev)
