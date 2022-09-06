"***************************PLUGINS**********************************
"cargar plugins de vundle
set rtp+=~/.config/nvim/bundle/Vundle.vim
"------PLUGINS VUNDLE----------
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on    " required
"------PLUGINS PACKER----------
lua << EOF
	require('packer').startup(function()
		use { "nvim-telescope/telescope-file-browser.nvim" }
		use 'wbthomason/packer.nvim'
		---optimizador lua
		use 'lewis6991/impatient.nvim'
		--Pantalla de inicio
		use {
			"startup-nvim/startup.nvim",
			requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
			config = function()
			require"startup".setup()
			end
		}
	end)
	require"startup".setup({theme = "dashboard"})
EOF
"------PLUGINS vim-plug--------
call plug#begin('~/.local/share/nvim/plugged')
"Temas
Plug 'morhetz/gruvbox'
Plug 'marko-cerovac/material.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"guias de identacion
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
Plug 'akinsho/bufferline.nvim', { 'tag': 'V2.*' }
"Iconos para los archivos y carpetas
Plug 'ryanoasis/vim-devicons'
"Plugin cerrado de parentesis
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
"plugin mini-mapa
Plug 'wfxr/minimap.vim'
"plugin de visualización de edicion html, css
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}
"Plugin que muestra propiedades de una function
Plug 'majutsushi/tagbar'
Plug 'stevearc/aerial.nvim'
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
Plug 'andrewradev/tagalong.vim'
"traductor
Plug 'voldikss/vim-translator'
"paleta de colores
Plug 'KabbAmine/vCoolor.vim'
"telescopio
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"plugin sintaxis para nerdtree
Plug 'vwxyutarooo/nerdtree-devicons-syntax'
"captura de codigo
Plug 'segeljakt/vim-silicon'
"flotar ventanas
Plug 'voldikss/vim-floaterm'
"Mejor identado treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"sintaxis
"Plug 'scrooloose/syntastic'
"mostrar marcas
Plug 'kshenoy/vim-signature'
"Plug 'chentoast/marks.nvim'
"depurador
Plug 'puremourning/vimspector'
"iconos de colores
"Plug 'lambdalisue/nerdfont.vim'
"Plug 'lambdalisue/fern-renderer-nerdfont.vim'
"Plug 'lambdalisue/glyph-palette.vim'
"multiples cursores
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"tranparencia a los temas
Plug 'xiyaowong/nvim-transparent'
"gestor de proyectos
"Plug 'ahmedkhalf/project.nvim'
"-----------LSP----------------
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
"autocompletado
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
"snipers
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
"-----------------------------
call plug#end()
"------------Plugins config-----------------------
""" configuración traductor
let g:translator_target_lang="ES"
let g:translator_default_engines=['google']
let NERDTreeQuitOnOpen = 1
"color de terminal flotante
"hi Floaterm guifg=red guibg=cian
"hi FloatermBorder guifg=white guibg=red
"poner un punto si un archivo no esta guardado
let g:lightline#bufferline#modified = ' ●'
"configuracion de complementos lua
lua << END
require('impatient')

config = function()
    vim.g.startup_disable_on_startup = true
    require("startup").setup(require("configs.startup_nvim"))
end

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
require("telescope").load_extension "file_browser"
require("aerial").setup({})
END

"******************************************************************+
