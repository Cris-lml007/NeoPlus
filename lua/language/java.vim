"source ~/.config/nvim/config/lsp.vim
"let b:coc_enabled=1
"lua << END
"	vim.diagnostic.config({
"	  virtual_text = false,
"	  signs = false,
"	  underline = false,
"	  update_in_insert = false,
"	  severity_sort = false,
"	})
"	require'lspconfig'.jdtls.setup{}
"END

"compilar y correr java
nmap <F9> :!rm %<.class <CR> :w<CR>:!javac % <CR>:sp term://java %< <CR>a
"Depurador java
nmap <F10> :!rm %<.class <CR> :w<CR>:sp term://javac % <CR>
