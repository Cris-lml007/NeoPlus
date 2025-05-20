--add plugins
require 'Plugins.lazy'

require("lazy").setup({
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },{
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',      -- fuente para LSP
            'hrsh7th/cmp-buffer',        -- fuente para buffer actual
            'hrsh7th/cmp-path',          -- completar rutas
            'hrsh7th/cmp-cmdline',       -- completar comandos
            'L3MON4D3/LuaSnip',          -- motor de snippets
            'saadparwaiz1/cmp_luasnip',  -- snippets para cmp
        }
    },{
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },













    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },{
        "nvim-telescope/telescope-file-browser.nvim"
    },{
        "ahmedkhalf/project.nvim"
    },{
        'Cris-lml007/startup.nvim'
    },{
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },{
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons'
    },{
        'cohama/lexima.vim'
    },{
        'tpope/vim-surround'
    },{
        'numToStr/Comment.nvim',
        opts = {
        },
        lazy = false
    },{
        'rrethy/vim-hexokinase',
        build='make hexokinase'
    },{
        'chrisbra/colorizer'
    },{
        'ziontee113/color-picker.nvim',
        config=function ()
            local opts = { noremap = true, silent = true }
            vim.keymap.set("n", "<a-c>", "<cmd>PickColor<cr>", opts)
            vim.keymap.set("i", "<a-c>", "<cmd>PickColorInsert<cr>", opts)
            require('color-picker').setup({
                ["icons"] = { "", " " }
            })
        end
    },{
        'voldikss/vim-floaterm',
        init=function ()
            vim.g.floaterm_keymap_toggle='<F5>'
        end
    },{
        'alvan/vim-closetag'
    },{
        'andrewradev/tagalong.vim'
    },{
        'lewis6991/gitsigns.nvim',
        config=function ()
            require('gitsigns').setup()
        end
    },{
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    },{ 'lukas-reineke/indent-blankline.nvim', main = "ibl", opts = {} },
    -- {
    --     'neoclide/coc.nvim',
    --     branch='release'
    -- },
    {
        'nvim-treesitter/nvim-treesitter'
    },{
        'Cris-lml007/shelf.nvim',
        config=function ()
            require('shelf').setup()
        end
    }
})
