
-- Smaller plugins for nice text editing stuff

return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Quickly add or change surrounds, quotes, tags, brackets etc.
  'tpope/vim-surround',

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- Add indentation guides even on blank lines
  {
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },
}
