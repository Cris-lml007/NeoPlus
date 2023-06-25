"------PLUGINS PACKER----------
lua << EOF
	-- Unless you are still migrating, remove the deprecated commands from v1.x
	vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

	require('packer').startup(function()
		use{
			"nvim-neo-tree/neo-tree.nvim",
			branch = "v2.x",
			requires ={
				"MunifTanjim/nui.nvim"
			}
		}
		use { "nvim-telescope/telescope-file-browser.nvim" }
		use 'nvim-telescope/telescope-project.nvim'
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
		use {
		  'chipsenkbeil/distant.nvim',
		  config = function()
			require('distant').setup {
			  ['*'] = require('distant.settings').chip_default()
			}
		  end
		}
		--previsualizar markdown
		use({
			"iamcco/markdown-preview.nvim",
			run = function() vim.fn["mkdp#util#install"]() end,
		})
		use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
		--cambiar variable lsp
	end)
	require"startup".setup({theme = "crazy"})
EOF
"------PLUGINS vim-plug--------
call plug#begin('~/.local/share/nvim/plugged')
"Temas
Plug 'rebelot/kanagawa.nvim'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'marko-cerovac/material.nvim'
Plug 'EdenEast/nightfox.nvim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"blade para laravel
Plug 'jwalton512/vim-blade'
"generador de imagenes
Plug 'samodostal/image.nvim'
Plug 'm00qek/baleia.nvim', { 'tag': 'v1.3.0' }
"guias de identacion
Plug 'lukas-reineke/indent-blankline.nvim'
"barra de estado
Plug 'nvim-lualine/lualine.nvim'
"iconos dev-icons
Plug 'kyazdani42/nvim-web-devicons'
"complemento para guardar archivos con sudo
Plug 'lambdalisue/suda.vim', {'on': 'SudaWrite'}
"coc-vim autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"administrador buffer
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
"Iconos para los archivos y carpetas
Plug 'ryanoasis/vim-devicons'
"Plugin cerrado de parentesis
Plug 'cohama/lexima.vim'
Plug 'tpope/vim-surround'
"plugin mini-mapa
Plug 'wfxr/minimap.vim' , {'on':'MinimapToggle'}
"plugin de visualización de edicion html, css
Plug 'turbio/bracey.vim', {'for':'html', 'do': 'npm install --prefix server'}
"Plugin que muestra propiedades de una function
Plug 'majutsushi/tagbar' , {'on':'Tagbar'}
"arbol de movimientos
Plug 'mbbill/undotree' , {'on':'UndotreeShow'}
"colores hexadesimales
Plug 'chrisbra/colorizer'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'ziontee113/color-picker.nvim'
" buscador de palabras
Plug 'easymotion/vim-easymotion'
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
"captura de codigo
Plug 'segeljakt/vim-silicon' , {'on':'Silicon'}
"flotar ventanas
Plug 'voldikss/vim-floaterm'
"Mejor identado treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground' , {'on': 'TSPlaygroundToggle'}
"sintaxis
"Plug 'scrooloose/syntastic'
"mostrar marcas
Plug 'kshenoy/vim-signature'
"Plug 'chentoast/marks.nvim'
"depurador
Plug 'puremourning/vimspector' , {'on':'VimspectorToggleBreakpoint'}
"multiples cursores *No necesario, activo Coc-multicursors
"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"tranparencia a los temas
Plug 'xiyaowong/nvim-transparent' , {'on':'TransparentEnable'}
"gestor de proyectos
Plug 'ahmedkhalf/project.nvim'
"visor de cambios GIT
Plug 'lewis6991/gitsigns.nvim'
"-----------LSP----------------
let languageLSP=['pascal']
if index(languageLSP,&filetype)!=-1
	echo "cargando LSP"
	source ~/.config/nvim/config/plugLsp.vim
endif
"-----------------------------
"coleccion de snippet
Plug 'rafamadriz/friendly-snippets'
"snippet unity
Plug 'kleber-swf/vscode-unity-code-snippets'
"-----------------------------
"probador de casos
Plug 'Cris-lml007/test.vim' , {'on':'TestVi'}
"manager database
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'tpope/vim-dadbod'
"nomodoro
Plug 'dbinagi/nomodoro'
call plug#end()
