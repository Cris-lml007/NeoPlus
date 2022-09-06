"interpretar Haskell
nmap <F8> :FloatermNew ghci % <CR>
"compilar haskell
nmap <F9> :!rm %< %<.hi %<.o <CR> :w<CR>:!ghc % <CR>:sp term://./%< <CR>a
"depurar haskell
nmap <F10> :!rm %< %<.hi %<.o <CR> :w<CR>:sp term://ghc % <CR>a
