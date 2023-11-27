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

-- Run different setup scripts
require('lazy-setup')
require('highlight-on-yank-setup')
require('telescope-setup')
require('lsp-setup')
require('cmp-setup')
-- Set options
require('options')
-- Set keymaps
require('keymaps')

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
