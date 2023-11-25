
-- Set up file explorer
-- Oil lets you modify files and folders vim-like. When writing you will be prompted to effectuate the changes

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
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
