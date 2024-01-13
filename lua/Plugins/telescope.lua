require("telescope").load_extension "file_browser"
require("telescope").load_extension "project"

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb',":Telescope file_browser<CR>")
