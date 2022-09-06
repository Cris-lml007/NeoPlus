"----------------------------C++---------------------------
"compilar y correr C++ (para uso de sfml usar comando SFML primero)
nmap <F9> :w<CR>:sp term://bash /home/metallica/.vim/vimrc/compiler_c++ ./.%<.sh %< % 1 ./.%<_database.sh ./.%<_sqlite.sh<CR>a
"Depurador C++
nmap <F10> :w<CR>:sp term://bash /home/metallica/.vim/vimrc/compiler_c++ ./.%<.sh %< % 0 ./.%<_database.sh ./.%<_sqlite.sh<CR>a
"SFML
nmap <leader>sf :!rm %< <CR> :!echo 'g++ -o %< % -lsfml-graphics -lsfml-system -lsfml-audio -lsfml-window' > .%<.sh <CR>:!chmod +x .%<.sh<CR>:!bash ./.%<.sh <CR> :sp term:// ./%< <CR>a
"MYSQL
nmap <leader>msq :!rm %< <CR> :!echo 'g++ -o %< $(mysql_config --cflags) % $(mysql_config --libs)' > .%<_database.sh <CR>:!chmod +x .%<_database.sh<CR>:!bash ./.%<_database.sh <CR> :sp term:// ./%< <CR>a
"SQLITE
nmap <leader>sql :!rm %< <CR> :!echo 'g++ -o %< % -lsqlite3' > .%<_sqlite.sh <CR>:!chmod +x .%<_sqlite.sh<CR>:!bash ./.%<_sqlite.sh <CR> :sp term:// ./%< <CR>a
"----------------------------------------------------------
