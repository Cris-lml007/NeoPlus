source ~/.config/nvim/config/lsp.vim
"configuracion de complementos lua
lua << END

require'lspconfig'.pasls.setup{
cmd={"/home/metallica/Recibidos/pascal-language-server-May-30-2022-x86_64-darwin/lib/x86_64-linux/pasls"}
}
END

"compilar y correr Pascal
nmap <F9> :!rm %< <CR> :w<CR>:!fpc -o%< %<CR>:clear<CR>:sp term:// ./%< %<CR>a
"prueba de compilacion
nmap <F10> :!rm %< <CR> :w<CR> :sp term://fpc -o%< %<CR>a

