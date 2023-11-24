
-- Manages the statusline on the bottom of the screen

return {
  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = true,
      theme = 'nightfly',
      component_separators = { right = '', left = '' },
      section_separators = { right ='', left='' },
    },
  },
}
