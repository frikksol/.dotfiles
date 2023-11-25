
-- Keymappings

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


