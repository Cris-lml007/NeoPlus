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
"color de fondo de Markdown-Preview
let g:mkdp_theme = 'dark'
"bracey-connexion de varios equipos
let g:bracey_server_allow_remote_connections = 1
"iconos para dadbod
let g:db_ui_icons = {
			\ 'expanded': {
		 	\   'db': '▾ 󰆼',
		 	\   'buffers': '▾ ',
		 	\   'saved_queries': '▾ ',
		 	\   'schemas': '▾ ',
		 	\   'schema': '▾ ',
		 	\   'tables': '▾ ',
		 	\   'table': '▾ ',
		 	\ },
		 	\ 'collapsed': {
		 	\   'db': '▸ 󰆼',
		 	\   'buffers': '▸ ',
		 	\   'saved_queries': '▸ ',
		 	\   'schemas': '▸ ',
		 	\   'schema': '▸ ',
		 	\   'tables': '▸ ',
		 	\   'table': '▸ ',
		 	\ },
		 	\ 'saved_query': '',
		 	\ 'new_query': '',
		 	\ 'tables': '',
		 	\ 'buffers': '﬘',
		 	\ 'add_connection': '󱘖',
		 	\ 'connection_ok': '✓',
		 	\ 'connection_error': '✕',
			\}

"configuracion de complementos lua
lua << END
--gitsigns-------------
require('gitsigns').setup()
-----------------------
--configuracion del generador de imagenes
-- Require and call setup function somewhere in your init.lua
require('image').setup {
  render = {
    min_padding = 5,
    show_label = true,
    use_dither = true,
    foreground_color = true,
    background_color = true
  },
  events = {
    update_on_nvim_resize = true,
  },
}
--------------------------------

require('impatient')

config = function()
    vim.g.startup_disable_on_startup = true
    require("startup").setup(require("configs.startup_nvim"))
end

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true 
	},
  },
}
require("telescope").load_extension "file_browser"
require'telescope'.load_extension('project')
require('telescope').load_extension('projects')
require("project_nvim").setup{}
--configuracion de nomodoro
require('nomodoro').setup({
    work_time = 25,
    break_time = 5,
    menu_available = true,
    texts = {
        on_break_complete = "TIME WORK!",
        on_work_complete = "TAKE A BREAK!",
        status_icon = "󰔟",
        timer_format = '!%0M:%0S' -- To include hours: '!%0H:%0M:%0S'
    },
    on_work_complete = function() end,
    on_break_complete = function() end
})
local lualine = require'lualine'
lualine.setup({
    sections = {
        lualine_x = {
			require('nomodoro').status,
			'encoding', 'fileformat', 'filetype'
        }
	}
})

require("color-picker").setup()

require("neo-tree").setup({
	filesystem ={
		group_empty_dirs = true,
		scan_mode = "deep"
	},
	source_selector ={
		winbar=true,
		statusline=false,
		sources = {
			{ source = "filesystem", display_name = " 󰉓 Files " },
			{ source = "git_status", display_name = " 󰊢 Git " }
		},
	}
})

END
"configuracion de TagBar
let g:tagbar_iconchars = ['▶ ', '▼ ']
let g:tagbar_scopestrs = {
			\    'class': "\uf0e8",
			\    'const': "\uf8ff",
			\    'constant': "\uf8ff",
			\    'enum': "\uf702",
			\    'field': "\uf30b",
			\    'func': "\uf794",
			\    'function': "\uf794",
			\    'getter': "\ufab6",
			\    'implementation': "\uf776",
			\    'interface': "\uf7fe",
			\    'map': "\ufb44",
			\    'member': "\uf02b",
			\    'method': "\uf6a6",
			\    'setter': "\uf7a9",
			\    'variable': "\uf71b",
			\ }

let g:tagbar_visibility_symbols = {
			\ 'public'    : ' ',
			\ 'protected' : ' ',
			\ 'private'   : '﫺 '
			\ }

"******************************************************************+
