return { -- Collection of various small independent plugins/modules
  {
    'echasnovski/mini.nvim',
    lazy = false,
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()
      -- Automatically add or remove pairs of characters
      require('mini.pairs').setup()
      -- Use brackets as motions
      require('mini.bracketed').setup()
      -- File explorer
      require('mini.files').setup {
        lazy = false,
        mappings = {
          close = '<Esc>',
        },
        opts = {
          options = {
            use_as_default_explorer = true,
          },
        },
      }
    end,

    keys = {
      {
        '_',
        function()
          require('mini.files').open(vim.uv.cwd(), true)
        end,
        desc = 'Open files at work dir',
      },
      {
        '-',
        function()
          require('mini.files').open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = 'Open files at current buffer',
      },
    },
  },
  vim.keymap.set({ 'n', 'x' }, 's', '<Nop>'),
}
