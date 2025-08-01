return { -- Nvim Spectre, Advanced Search and Replace
  'nvim-pack/nvim-spectre',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'pechasnovski/mini.icons',
  },
  config = function()
    require('spectre').setup {
      open_cmd = 'vnew',
      is_insert_mode = true,
      highlight = {
        ui = 'SpectreUI',
        search = 'SpectreSearch',
        replace = 'SpectreReplace',
      },
    }
  end,
  vim.keymap.set('n', '<leader>S', '<cmd>lua require("spectre").toggle()<CR>', {
    desc = 'Toggle Spectre',
  }),
}
