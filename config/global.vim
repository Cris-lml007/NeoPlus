"aconfiguraciones diferentes segun tipo de archivo
"set fileencoding=iso-8859-1
"colocado de Indentado integrado
"set listchars=tab:\┆\ 
"mostrar caracteres invisibles
set list
"rehacer/hacer persistente
set undofile
"resaltado de busqueda
set hlsearch
"numero de linea
set number
"numeros relativos
set number relativenumber
"tamaño de columna de numeros de linea
set numberwidth=1
"activar mouse
set mouse=a
"uso compartido del portapapeles
"set clipboard=unnamed
set clipboard=unnamedplus
"muestra los comandos que se ejecutan en la parte inferior
set showcmd
"muestra posicion x/y
set ruler
"tipo de codificacion
set encoding=UTF-8
"resaltado de apertura/cierre de parentesis
set showmatch
"quita la barra de estado predeterminado dw vim
set noshowmode
"sintaxis
syntax enable
"tamaño de tabulacion
set tabstop=4
set sw=4
"autoindenteado
set autoindent
"linea de estados siempre visible
set laststatus=2
"set bg=dark
"integracion con colores completos
set termguicolors
"cierre forazado de buffers
set hidden
"desactivar opciones obsoletas de vi
set nocompatible              " be iMproved, required
"tipo de fichero
filetype off
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
