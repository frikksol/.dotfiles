return { -- Catppuccin theme
  'catppuccin/nvim',
  lazy = false,
  name = 'catppuccin',
  priority = 1000,

  config = function()
    require('catppuccin').setup {
      integrations = {
        blink_cmp = true,
        harpoon = true,
        --lualine
        neotest = true,
        noice = true,
        copilot_vim = true,
        notify = true,
        which_key = true,
      },
    }
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}
