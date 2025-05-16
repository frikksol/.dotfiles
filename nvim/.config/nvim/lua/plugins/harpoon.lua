return { -- Harpoon for blazing fast file switching
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon').setup {}
  end,
  keys = {
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Add file to Harpoon',
    },
    {
      '<leader>hh',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = 'Toggle Harpoon Menu',
    },
    {
      '<leader>h1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Switch to Harpoon File 1',
    },
    {
      '<leader>h2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Switch to Harpoon File 2',
    },
    {
      '<leader>h3',
      function()
        require('harpoon'):list():select(3)
      end,
      desc = 'Switch to Harpoon File 3',
    },
    {
      '<leader>h4',
      function()
        require('harpoon'):list():select(4)
      end,
      desc = 'Switch to Harpoon File 4',
    },
  },
}
