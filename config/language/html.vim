source ~/.config/nvim/config/lsp.vim

lua << END
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}
require'lspconfig'.cssls.setup {
  capabilities = capabilities,
}
END
let g:bracey_refresh_on_save=1
let g:bracey_eval_on_save=1
let g:bracey_auto_start_server=1
"crear sevidor local
nmap <F9> :Bracey<CR>
"recargar servidor
nmap <F10> :BraceyReload<CR>
