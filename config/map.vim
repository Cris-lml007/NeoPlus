"************MAPEOS*************
"TECLA LIDER
let mapleader=" "
"----------navegacion-----------------
"acceso para salir
nmap q :delmarks!<CR>:q<CR>
"acceso para salir forzado
nmap Q :delmarks!<CR>:q!<CR>
"acceso para guardar
nmap<C-s> :delmarks!<CR>:w<CR>
"acceso para salir y guardar.
nmap<C-a> :delmarks!<CR>:wq<CR>
"guardar archivos que requieren acceso root
nmap <C-R> :SudaWrite <CR>:q!<CR>
"cambiar buffer hacia adelante
"nmap <silent>& :bn <CR>
nmap <TAB> :bn <CR>
"cambiar buffer hacia atras
"nmap <silent>$ :bp <CR>
nmap <S-TAB> :bp <CR>
"cerrar buffer
nmap<C-w> :delmarks!<CR>:bd <CR>
nmap <leader>5 :delmarks!<CR>:bd <CR>
"mover linea hacia abajo y arriba
nmap <C-down> :m +1 <CR>
nmap <C-up> :m -2 <CR>
"Accesos directos para usar el plugin de Tmux
nmap <leader><left> :TmuxNavigateLeft<CR>
nmap <leader><right> :TmuxNavigateRight<CR>
nmap <leader><down> :TmuxNavigateDown<CR>
nmap <leader><up> :TmuxNavigateUp<CR>
"----------------manipulacion de texto-------------------
"quitar resaltado de busqueda
nmap <silent>,/ :nohlsearch<CR>
"numeros relativos
nmap <silent>,. :set relativenumber! <CR>
"rehacer
nmap <silent>r :redo<CR>
"quitar recorrido de carro
nmap <leader>} :%s///g <CR>
"--------------------Plugins---------------------------
"abrir lazygit en floaterm
nmap <leader>g :FloatermNew ~/go/bin/lazygit <CR>
nmap <leader>" :FloatermNew ncmpcpp <CR>
"abrir arbol de cambios
nmap <leader><C-z> :UndotreeShow<CR> :TmuxNavigateLeft<CR>
"acceso para usar el desplazador por palabra
nmap <Leader>s <Plug>(easymotion-s2)
"acceso para usar el explorador de archivos
"nmap <Leader>ñ :NERDTreeFind<CR>
nmap <Leader>ñ :NERDTreeToggle<CR>
"abrir y cerrar el mini mapa
nmap <leader>mm :MinimapToggle<CR>
"abrir el analizador de clases
nmap <leader><F8> :Tagbar<CR>
"codigo unicode del caracter en cursor
nmap <leader>ch :UnicodeName<CR>
"buscar caracter y insertar
nmap <leader>se :UnicodeSearch!
"buscador de ficheros
nmap <leader>ff :Telescope find_files<CR>
nmap <leader>fg :Telescope live_grep<CR>
"terminal flotante
let g:floaterm_keymap_toggle='<F5>'
"captura de portapapeles
nmap <leader>FF :Silicon --to-clipboard=true<CR>
vmap <silent>FF :Silicon --to-clipboard=true<CR>
"activar depurador vimspector
map <F2> <Plug>VimspectorContinue
"colocar punto de rumpura en vimspector
map ° <Plug>VimspectorToggleBreakpoint
"traducción en una ventana
nmap <silent> TW <Plug>TranslateW
vmap <silent> TW <Plug>TranslateWV
"traducion en linea
nmap <silent> TT <Plug>Translate
vmap <silent> TT <Plug>TranslateV
"traduccion con reemplazar
nmap <silent> TR <Plug>TranslateR
vmap <silent> TR <Plug>TranslateRV
"------------Reemplazar integrado de vim(existente reemplazo de COC)------------
"reemplazar texto
nmap <leader>yp :%s/rem/por/[cgil]
"reemplazar rango modo visual
vmap <leader>yr :s//
"--------------Mapeos de COC-------------------
"completado con TAB
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"mostrar sugerencias
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
"mostrar documentacion de funcion
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

"buscar el símbolo del documento actual.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" símbolos del espacio de trabajo de búsqueda.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"acciones de codigo/correcciones
nmap <leader>c  <Plug>(coc-codeaction)

"reemplazar
nmap <leader>rn <Plug>(coc-rename)

" mostrar todos los diagnósticos.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>

" ir a navegación de código.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

if has("persistent_undo")
   let target_path = expand('~/.local/share/nvim/undodir')

    " create the directory and any parent directories
    " if the location does not exist.
    if !isdirectory(target_path)
        call mkdir(target_path, "p", 0700)
    endif

    let &undodir=target_path
    set undofile
endif

"multiple cursor de COC
nmap <silent> <C-n> <Plug>(coc-cursors-position)
nmap <silent> <C-d> <Plug>(coc-cursors-word)
xmap <silent> <C-d> <Plug>(coc-cursors-range)
" use normal command like `<leader>xi(`
nmap <leader>x  <Plug>(coc-cursors-operator)
"-----------Mapeos del depurador (VIMSPECTOR)--------------------
"let g:vimspector_enable_mappings = 'HUMAN'
let s:mapped = {}

function! s:OnJumpToFrame() abort
  if has_key( s:mapped, string( bufnr() ) )
    return
  endif
"detener depurador
  nmap <silent> <buffer> <F3> <Plug>VimspectorStop
"siguiente paso
  nmap <silent> <buffer> <F10> <Plug>VimspectorStepOver
"entrar en
  nmap <silent> <buffer> <F8> <Plug>VimspectorStepInto
"Salga del alcance actual de la función
  nmap <silent> <buffer> <F12> <Plug>VimspectorStepOut
  "nmap <silent> <buffer> <LocalLeader>dc <Plug>VimspectorContinue
"ver valor de variable
  nmap <silent> <buffer> <F9> <Plug>VimspectorBalloonEval
  xmap <silent> <buffer> <F9> <Plug>VimspectorBalloonEval

  let s:mapped[ string( bufnr() ) ] = { 'modifiable': &modifiable }

  setlocal nomodifiable

endfunction

function! s:OnDebugEnd() abort

  let original_buf = bufnr()
  let hidden = &hidden
  augroup VimspectorSwapExists
    au!
    autocmd SwapExists * let v:swapchoice='o'
  augroup END

  try
    set hidden
    for bufnr in keys( s:mapped )
      try
        execute 'buffer' bufnr
        silent! nunmap <buffer> <F3>
        silent! nunmap <buffer> <F10>
        silent! nunmap <buffer> <F8>
        silent! nunmap <buffer> <F12>
        "silent! nunmap <buffer> <LocalLeader>dc
        silent! nunmap <buffer> <F9>
        silent! xunmap <buffer> <F9>

        let &l:modifiable = s:mapped[ bufnr ][ 'modifiable' ]
      endtry
    endfor
  finally
    execute 'noautocmd buffer' original_buf
    let &hidden = hidden
  endtry

  au! VimspectorSwapExists

  let s:mapped = {}
endfunction

augroup TestCustomMappings
  au!
  autocmd User VimspectorJumpedToFrame call s:OnJumpToFrame()
  autocmd User VimspectorDebugEnded ++nested call s:OnDebugEnd()
augroup END
"*******************************
