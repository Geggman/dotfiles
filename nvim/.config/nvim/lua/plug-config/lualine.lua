require'lualine'.setup {
  options = {theme = 'onedark'}, -- Set dracula as the lualine theme
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch'},
      lualine_c = {'filename'},
      lualine_x = {'filetype'},
    },
    section_separators = {nil, nil},
    component_separators = {nil, nil}
}



