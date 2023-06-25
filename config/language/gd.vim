source ~/.config/nvim/config/lsp.vim

lua << end
require'lspconfig'.gdscript.setup{
	cmd = vim.lsp.rpc.connect('127.0.0.1',6008)
}

end
