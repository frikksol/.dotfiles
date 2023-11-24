
-- Set up two different file explorers
-- Oil is the default and lets you modify files and folders vim-like. When writing you will be prompted to effectuate the changes
-- Neotree is a backup, kind of VsCode-like. Run with :Neotree

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
    config = function ()
      require('neo-tree').setup {
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hijack_netrw_behaviour = "disabled"
          }
        }
      }
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("oil").setup({
        default_file_explorer = true,
        view_options = {
          show_hidden = true,
        }
      })
    end
  }
}
