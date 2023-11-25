--[[

=====================================================================
========================= Frikks Nvim Config ========================
========================= Based on kickstart ========================
=====================================================================
]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Install `lazy.nvim` plugin managers
-- https://github.com/folke/lazy.nvim
--`:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Configure plugins
require('lazy').setup({
  -- Import custom plugins in lua/custom/plugins
  { import = 'custom.plugins' },
}, {})

-- Run different setup scripts
require('highlight-on-yank-setup')
require('telescope-setup')
require('treesitter-setup')
require('cmp-setup')
-- Set options
require('options')
-- Set keymaps
require('keymaps')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
