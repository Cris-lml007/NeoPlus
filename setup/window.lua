local dirSetup=vim.fn.stdpath('config')..'/setup/'
vim.api.nvim_command('!mkdir '..vim.fn.stdpath('data')..'/session')

local message={
    "",
    "",
    "           ███╗   ██╗███████╗ ██████╗ ██████╗ ██╗     ██╗   ██╗███████╗",
    "           ████╗  ██║██╔════╝██╔═══██╗██╔══██╗██║     ██║   ██║██╔════╝",
    "           ██╔██╗ ██║█████╗  ██║   ██║██████╔╝██║     ██║   ██║███████╗",
    "           ██║╚██╗██║██╔══╝  ██║   ██║██╔═══╝ ██║     ██║   ██║╚════██║",
    "           ██║ ╚████║███████╗╚██████╔╝██║     ███████╗╚██████╔╝███████║",
    "           ╚═╝  ╚═══╝╚══════╝ ╚═════╝ ╚═╝     ╚══════╝ ╚═════╝ ╚══════╝",
    "",
    "        NeoPlus is a free, open source IDE with tools that works on NeoVim",
    "      ------------------------------------------------------------------",
    "   This is the NeoPlus installer, for the correct operation neoplus will install",
    "         the necessary dependencies and tools for its operation.",
    "please do not close neovim until you are informed that the installation was correct",
    "",
    "                       (I)nstall               (C)ancel",
}


local buffer=vim.api.nvim_create_buf(false,true)
vim.api.nvim_buf_set_option(buffer, 'modifiable', true)
vim.api.nvim_buf_set_option(0, 'modifiable', true)
vim.api.nvim_buf_set_lines(buffer,0,-1,false,message)

local x=vim.api.nvim_win_get_width(0)
local width=85
local height=16

local win=vim.api.nvim_open_win(buffer,true,{
    relative='win',
    col=x/2-width/2,
    row=10,
    width=width,
    height=height
})

function run()
    width=40
    height=5
    vim.api.nvim_win_close(win,true)
    vim.cmd('source ~/.config/nvim/lua/config/plugins.lua')
    vim.cmd('q')
    local msg={
        "  the installation was successful :)",
        "",
        "           Press Enter"
    }
    vim.api.nvim_buf_set_lines(buffer,0,-1,false,msg)
    vim.api.nvim_open_win(buffer,true,{
        relative='win',
        col=x/2-width/2,
        row=10,
        width=width,
        height=height
    })
    vim.api.nvim_command('!rm -r '..dirSetup)
    vim.api.nvim_set_keymap('n','<CR>',':q!<CR>:q!<CR>',{})
end

function cancel()
    vim.api.nvim_win_close(win,true)
    vim.cmd(':q!')
end


vim.api.nvim_set_keymap('n','I',':lua run()<CR>',{})
vim.api.nvim_set_keymap('n','C',':lua cancel()<CR>',{})

