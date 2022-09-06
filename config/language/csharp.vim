"call plug#begin('~/.local/share/nvim/plugged')
"Plug 'morhetz/gruvbox'
""C#
""Plug 'OmniSharp/omnisharp-vim'
""Plug 'dense-analysis/ale'
""-----------LSP----------------
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'neovim/nvim-lspconfig'
""autocompletado
"Plug 'hrsh7th/nvim-cmp'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-cmdline'
""snipers
"Plug 'L3MON4D3/LuaSnip'
"Plug 'saadparwaiz1/cmp_luasnip'
""-----------------------------
"
"Plug 'nvim-lua/plenary.nvim'
""Plug 'filipdutescu/renamer.nvim', { 'branch': 'master' }
"Plug 'stevearc/dressing.nvim'
"call plug#end()

source ~/.config/nvim/config/lsp.vim
lua << END

-----------CONFIGURACION OMNISHARP
  require'lspconfig'.omnisharp.setup {
	  cmd = { "dotnet", "/path/to/omnisharp/OmniSharp.dll" },

	  -- Enables support for reading code style, naming convention and analyzer
	  -- settings from .editorconfig.
	  enable_editorconfig_support = true,

	  -- If true, MSBuild project system will only load projects for files that
	  -- were opened in the editor. This setting is useful for big C# codebases
	  -- and allows for faster initialization of code navigation features only
	  -- for projects that are relevant to code that is being edited. With this
	  -- setting enabled OmniSharp may load fewer projects and may thus display
	  -- incomplete reference lists for symbols.
	  enable_ms_build_load_projects_on_demand = false,

	  -- Enables support for roslyn analyzers, code fixes and rulesets.
	  enable_roslyn_analyzers = false,

	  -- Specifies whether 'using' directives should be grouped and sorted during
	  -- document formatting.
	  organize_imports_on_format = false,

	  -- Enables support for showing unimported types and unimported extension
	  -- methods in completion lists. When committed, the appropriate using
	  -- directive will be added at the top of the current file. This option can
	  -- have a negative impact on initial completion responsiveness,
	  -- particularly for the first few completion sessions after opening a
	  -- solution.
	  enable_import_completion = false,

	  -- Specifies whether to include preview versions of the .NET SDK when
	  -- determining which version to use for project loading.
	  sdk_include_prereleases = true,

	  -- Only run analyzers against open files when 'enableRoslynAnalyzers' is
	  -- true
	  analyze_open_documents_only = false,
	  }
END

  "compilar C#
  nmap <F9> :w<CR>:!dotnet build<CR>
  "prueba de compilacion
  nmap <F10> :sp term://dotnet run<CR>

