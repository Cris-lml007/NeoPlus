local opt=vim.opt

--show invisible characters
opt.list=true
--redo/do persistent
opt.undofile=true
--search highlight
opt.hlsearch=true
--line number
opt.number=true
--relative numbers
opt.relativenumber=true
--line number column size
opt.numberwidth=1
--activate mouse
opt.mouse="a"
--clipboard sharing
opt.clipboard="unnamedplus"
--shows the commands that are executed at the bottom
opt.showcmd=true
--shows x/y position
opt.ruler=true
--encoding type
opt.encoding='UTF-8'
--file encoding type
opt.fileencoding='UTF-8'
--highlighting opening/closing parentheses
opt.showmatch=true
--remove default status bar dw vim
opt.showmode=false
--syntax
opt.syntax="off"
--size of tabulation
opt.expandtab=true
--amount of space per indentation
opt.sw=4
--self-indented
opt.autoindent=true
--status line always visible
opt.laststatus=2
--integracion con colores completos
opt.termguicolors=true
--cierre forazado de buffers
opt.hidden=true
--desactivar opciones obsoletas de vi
opt.compatible=false
--tipo de fichero
opt.filetype="off"
--muestra sugerencias seleccionables
opt.wildmenu=true

--resumes opening from previous point
vim.api.nvim_exec([[
  augroup restore_cursor_position
    autocmd!
    autocmd BufReadPost *
          \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
          \ |   exe "normal! g`\""
          \ | endif
  augroup END
]], false)


if vim.fn.has("persistent_undo") == 1 then
    local target_path = vim.fn.expand('~/.local/share/nvim/undodir')
    if vim.fn.isdirectory(target_path) == 0 then
        vim.fn.mkdir(target_path, "p", 0700)
    end
    vim.o.undodir = target_path
    vim.o.undofile = true
end
