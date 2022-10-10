#!/bin/bash
echo "Instalando vim-plug\n"
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "vim-plug instalado\n"
echo "Instalando Packer\n"
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
echo "packer instalado\n"
echo "ejecute sudo su y curl -sL install-node.vercel.app/lts | bash"
exit
