"colores para nerdtree
let s:colors = {
  \ 'pink'        : "CB6F6F",
  \ 'brown'       : "905532",
  \ 'aqua'        : "3AFFDB",
  \ 'blue'        : "689FB6",
  \ 'darkBlue'    : "44788E",
  \ 'purple'      : "834F79",
  \ 'lightPurple' : "834F79",
  \ 'red'         : "AE403F",
  \ 'beige'       : "F5C06F",
  \ 'yellow'      : "F09F17",
  \ 'orange'      : "D4843E",
  \ 'darkOrange'  : "F16529",
  \ 'salmon'      : "EE6E73",
  \ 'green'       : "8FAA54",
  \ 'lightGreen'  : "31B53E",
  \ 'white'       : "FFFFFF"
\ }

lua << END
vim.g.tokyonight_style = "night"

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


require("bufferline").setup{
	highlights ={
		fill = {
			--fg = '#272930',
			--bg = '#2d362f',
		},
	};
}

require('lualine').setup{
	--options = { theme = 'codedark' },
}

require("nvim-web-devicons").set_icon {
  pp = {
    icon = "",
    color = "#9FFF00",
    cterm_color = "65",
    name = "pascal"
  },
  pas = {
    icon = "",
    color = "#9FFF00",
    cterm_color = "65",
    name = "pascal"
  },
  cs ={
   icon = "",
   color = "#834F79",
   cterm_color = "65",
   name = "csharp"
   }
}
require('nightfox').setup({
	options={
		--transparent=true
	}
})
vim.g.material_style = "deep ocean"
END

colorscheme tokyonight-night
