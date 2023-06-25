"directorio de configuracion de LSP:
" ~/.config/nvim/config/lsp.vim
"-------------variables de entorno--------------
"definicion de extension *.pp
let g:filetype_pp="pascal"
"-----------------------------------------------

"configuraciones globales
source ~/.config/nvim/config/global.vim
"Plugins
source ~/.config/nvim/config/plugins.vim
"Configuracion de interfaz
source ~/.config/nvim/config/gui.vim
"accesos directos
source ~/.config/nvim/config/map.vim
"scripts personalizados
source ~/.config/nvim/config/script.vim
"----------configuraciones indepentientes por lenguaje------------
"configuracion para C++
autocmd FileType cpp nested :source ~/.config/nvim/config/language/cpp.vim
"configuracion para pascal
autocmd FileType pascal nested :source ~/.config/nvim/config/language/pascal.vim
"configuracion para java
autocmd FileType java nested :source ~/.config/nvim/config/language/java.vim
"configuracion para html/css
autocmd FileType html,css nested :source ~/.config/nvim/config/language/html.vim
"configuracion para javascript
autocmd FileType javascript nested :source ~/.config/nvim/config/language/javascript.vim
"configuracion para python
autocmd FileType python nested :source ~/.config/nvim/config/language/python.vim
"configuracion de Haskell
autocmd FileType haskell nested :source ~/.config/nvim/config/language/haskell.vim
"configuracion de C#
autocmd FileType cs nested :source ~/.config/nvim/config/language/csharp.vim
"configuracion de godot (gdscript)
"autocmd FileType gdscript nested :source ~/.config/nvim/config/language/gd.vim
"-----------------------------------------------------------------
"
