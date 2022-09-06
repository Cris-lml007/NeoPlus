"set fileencoding=iso-8859-1
"set listchars=tab:\┆\ 
set list
"rehacer/hacer persistente
set undofile
"resaltado de busqueda
set hlsearch
set number
set number relativenumber 
set numberwidth=1
set mouse=a
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=4
set clipboard=unnamedplus
"quita la barra de estado predeterminado dw vim
set noshowmode
syntax enable
set tabstop=4
set autoindent
set laststatus=2
"set bg=dark
set termguicolors
set hidden
"
"muestra sugerencias seleccionables
set wildmenu
"muestra todas la sugerencias en texto plano
"set wildmode=list:longest,full
"
"###REANUDA LA APERTURA DESDE EL PUNTO ANTERIOR
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\""
      \ | endif
"no partir el mostrado de lineas largas
"set nowrap
"colorscheme chlordane

"""""""Pluging"""""""""
call plug#begin('~/.local/share/nvim/plugged')
"temas
Plug 'morhetz/gruvbox'
Plug 'kaicataldo/material.vim'

"lineas en codigo identado
Plug 'lukas-reineke/indent-blankline.nvim'
"barra de estado
Plug 'nvim-lualine/lualine.nvim'
"iconos dev-icons
Plug 'kyazdani42/nvim-web-devicons'
"complemento para guardar archivos con sudo
Plug 'lambdalisue/suda.vim'
"coc-vim autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"administrador buffer
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"Iconos para los archivos y carpetas
Plug 'ryanoasis/vim-devicons'
"Plugin cerrado de parentesis
Plug 'cohama/lexima.vim'
"plugin mini-mapa
Plug 'wfxr/minimap.vim'
"plugin de visualización de edicion html, css
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"Plugin que muestra propiedades de una function
Plug 'majutsushi/tagbar'
"arbol de movimientos
Plug 'mbbill/undotree'
"colores hexadesimales
Plug 'chrisbra/colorizer'
" buscador de palabras
Plug 'easymotion/vim-easymotion'
"exlorador de archivos modo arbol
Plug 'scrooloose/nerdtree'
"complemento de tmux para la navegacion entre paneles
Plug 'christoomey/vim-tmux-navigator'
"Plugin para sacar caracteres especiales
Plug 'chrisbra/unicode.vim'
"closedtag html
Plug 'alvan/vim-closetag'

call plug#end()
"""""""""""""""""""""""
"configuracion de complementos lua
lua << END

vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#C678DD gui=nocombine]]

vim.opt.list = true
require("indent_blankline").setup {
    char_highlight_list = {
        "IndentBlanklineIndent1",
        "IndentBlanklineIndent2",
        "IndentBlanklineIndent3",
        "IndentBlanklineIndent4",
        "IndentBlanklineIndent5",
        "IndentBlanklineIndent6",
    },
}

END

"Accesos directos
"acceso para salir
nmap q :q<CR>
"acceso para salir forzado
nmap Q :q!<CR>
"acceso para guardar
nmap<C-s> :w<CR>
"acceso para salir y guardar.
nmap<C-a> :wq<CR>
"guardar archivos que requieren acceso root
nmap <C-R> :SudaWrite <CR>:q!<CR>
"cambiar buffer hacia adelante
nmap <silent>& :bn <CR>
"cambiar buffer hacia atras
nmap <silent>$ :bp <CR>
"cerrar buffer
nmap<silent>% :bd <CR>
"quitar resaltado de busqueda
nmap <silent>,/ :nohlsearch<CR>
"rehacer
nmap <silent>r :redo<CR>
"abrir arbol de cambios
nmap <C-z> :UndotreeShow<CR> :TmuxNavigateLeft<CR>
"quitar recorrido de carro
nmap <leader>} :%s///g <CR>

"mover linea hacia abajo y arriba
nmap <C-down> :m +1 <CR>
nmap <C-up> :m -2 <CR>


let mapleader=" "
"acceso para usar el desplazador por palabra
nmap <Leader>s <Plug>(easymotion-s2)
"acceso para usar el explorador de archivos
nmap <Leader>ñ :NERDTreeFind<CR>
"Accesos directos para usar el plugin de Tmux
nmap <leader><left> :TmuxNavigateLeft<CR>
nmap <leader><right> :TmuxNavigateRight<CR>
nmap <leader><down> :TmuxNavigateDown<CR>
nmap <leader><up> :TmuxNavigateUp<CR>
"abrir y cerrar el mini mapa
nmap <leader>mm :Minimap<CR>
nmap <leader>mc :MinimapClose<CR>
"abrir el analizador de clases
nmap <leader><F8> :Tagbar<CR>
"codigo unicode del caracter en cursor
nmap <leader>ch :UnicodeName<CR>
"buscar caracter y insertar
nmap <leader>se :UnicodeSearch!

"interpretar javascript con node.js
nmap <F9> :w<CR>:sp term://nodejs % <CR>a

