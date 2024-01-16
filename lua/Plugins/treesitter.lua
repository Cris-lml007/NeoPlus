require'nvim-treesitter.configs'.setup {
    ensure_installed = {"lua", "vim", "vimdoc"},
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

