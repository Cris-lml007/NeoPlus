vim.g.mapleader=' '
--macros
vim.keymap.set('n','<leader>Q','q')
--close neovim
vim.keymap.set('n','q',':delmarks!<CR>:q<CR>')
--forced close
vim.keymap.set('n','Q',':delmarks!<CR>:q!<CR>')
--save and exit
vim.keymap.set('n','<c-a>',':delmarks!<CR>:wq<CR>')
--save
vim.keymap.set('n','<c-s>',':w<CR>')
--change buffer forward
vim.keymap.set('n','<tab>',':bn<CR>')
--change buffer back
vim.keymap.set('n','<s-tab>',':bp<CR>')
--cerrar buffer
--vim.keymap.set('n','<c-w>',':delmarks!<CR>:bd<CR>')
--cerrar buffer forzado
vim.keymap.set('n','<leader>w',':bd!<CR>')
--mover linea hacia abajo y arriba en modo normal
vim.keymap.set('n','<c-up>',":m -2<CR>")
vim.keymap.set('n','<c-down>',":m +1<CR>")
--mover linea hacia abajo y arriba en modo visual
vim.keymap.set('x','<c-up>',":m '< -2 <CR>gv=gv")
vim.keymap.set('x','<c-down>',":m '>+1 <CR>gv=gv")
--navegador por paneles

vim.api.nvim_set_keymap('n', '<leader><left>', '<C-w> +', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader><left>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><right>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><up>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader><down>', '<C-w>j', { noremap = true, silent = true })
--quitar resaltado de busqueda
vim.keymap.set('n',',/',":nohlsearch<CR>")
--alternar numeros relativos
vim.keymap.set('n',',.',":set relativenumber!<CR>")
--rehacer
vim.keymap.set('n','r',":redo<CR>")
