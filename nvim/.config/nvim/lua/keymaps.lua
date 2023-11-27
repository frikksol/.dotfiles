
-- Keymaps

-- Keymaps for better default experience
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
-- Diagnostic keymaps
vim.keymap.set('n', 'ød', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', 'æd', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })


-- Telescope
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sG', ':LiveGrepGitRoot<cr>', { desc = '[S]earch by [G]rep on Git Root' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })


-- Harpoon
vim.keymap.set('n', '<leader>hm', require('harpoon.mark').add_file, {desc = "[M]ark file with [h]arpoon"})
vim.keymap.set('n', '<leader>ha', require('harpoon.mark').add_file, {desc = "[Add] file to [h]arpoon"})
vim.keymap.set('n', '<leader>hn', require('harpoon.ui').nav_next, {desc = "Go to [n]ext [harpoon] file"})
vim.keymap.set('n', '<leader>hp', require('harpoon.ui').nav_prev, {desc = "Go to [p]revious [harpoon] file"})
vim.keymap.set('n', '<leader>hl', require('harpoon.ui').toggle_quick_menu, {desc = "[L]ist [h] files"})
vim.keymap.set('n', '<leader>h1', function() require('harpoon.ui').nav_file(1) end, {desc = "Navigate to [h]arpoon file 1"})
vim.keymap.set('n', '<leader>h2', function() require('harpoon.ui').nav_file(2) end, {desc = "Navigate to [h]arpoon file 2"})
vim.keymap.set('n', '<leader>h3', function() require('harpoon.ui').nav_file(3) end, {desc = "Navigate to [h]arpoon file 3"})
vim.keymap.set('n', '<leader>h4', function() require('harpoon.ui').nav_file(4) end, {desc = "Navigate to [h]arpoon file 4"})
vim.keymap.set('n', '<leader>h5', function() require('harpoon.ui').nav_file(5) end, {desc = "Navigate to [h]arpoon file 5"})
vim.keymap.set('n', '<leader>h6', function() require('harpoon.ui').nav_file(6) end, {desc = "Navigate to [h]arpoon file 6"})


-- Oil file explorer
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

