# 📦 DOTFILE NVIM
![image](https://user-images.githubusercontent.com/83845332/194928432-4b4d91a4-4b36-41bd-b86f-2b81dd84274a.png)  
<div align="center">
  <center>
     <img alt="Linux" src="https://img.shields.io/badge/Linux-%23.svg?style=flat-square&logo=linux&color=FCC624&logoColor=black" />
     <img alt="macOS" src="https://img.shields.io/badge/macOS-%23.svg?style=flat-square&logo=apple&color=000000&logoColor=white" />
     <img src="https://img.shields.io/badge/Neovim-0.7.2-blueviolet.svg?style=flat-square&logo=Neovim&logoColor=green" alt="Neovim minimum version"/>
  </center>
</div>  

Convert your Neovim an IDE.  
This es an secuence de config and plugins that do easy use to Neovim, with shortcuts simples and modifiable.  
# 🧰 Requirements  
- Neovim 0.7.2 or 0.8  
- g++
- nodejs
- JDK 17
- golang
- others dependences of the plugins (view github of plugin).
# ✔️ List Plugins  
- COC
- NEERDTREE
- Lualine
- Bufferline
- Vim-Floaterm
- Telescope
- Nvim-Treesitter
- Plenary.nvim
- Bracey.vim
- VColor
- Indent-blankline
- LSP-Install
- LSP-Config
- Vim-Translator
- Tagbar
- Vimspector
- Suda
- Vim-Tmux
- more
# 🌈 Themes
- TokyoNight
- Gruvbox
- Nightfox
- Material
# ⚒️ Install
clone repository:
```
git clone https://github.com/Cris-lml007/dotfile-nvim/
```
move all to `~/.config/nvim/`.  
execute `install-manager.sh` for install `vim-plug` and `packer`.  
First opening of Neovim with: `nvim -u ~/.config/nvim/install.vim` for install the Plugins and compiler packer.  
In Nvim:  
- `:PlugInstall`
- `:PackerCompiler`
- `:PackerInstall`
# ⌨️ Mappings
- `space` key leader
- `q` exit
- `Q` exit without save
- `Ctrl`+`s` save
- `Ctrl`+`a` save and exit
- `leader`+`ñ` open NEERDTREE
- `leader`+`F9` compiler and run (dependence the language, view `~/.config/nvim/config/language/`).
- `leader`+`F10` compiler and show output (dependence the language, view `~/.config/nvim/config/language/`).  
review the file of mapping for learn more. (~/.config/nvim/config/map.vim).  
# 📷 Screenshot
<details><summary>Click here</summary>  
○ Tokyonight
<br><img src="https://user-images.githubusercontent.com/83845332/194933599-6b64aa6b-af17-4e57-96e1-a6025ac5f64e.png"><br>
○ compiler C++
<br><img src="https://user-images.githubusercontent.com/83845332/194933671-091c86c0-340d-4c85-8851-a503a1e94cd4.png"><br> 
○ Autocomplete
<br><img src="https://user-images.githubusercontent.com/83845332/194933911-f0455d86-291f-42e4-9227-4d381cb21db3.png"><br> 
○ Detection errors
<br><img src="https://user-images.githubusercontent.com/83845332/194933978-5d530850-6cba-42d8-8876-ad5bcba1a3b5.png"><br>
○ Telescope  and theme material  
<br><img src="https://user-images.githubusercontent.com/83845332/194934123-3645c9fd-7d2f-4174-9775-0ce097ca24d0.png"><br>
○ Translate and theme Gruvbox  
<br><img src="https://user-images.githubusercontent.com/83845332/194934397-be38d75c-6b9c-4086-84a1-b7ecee72ff0f.png"><br>
○ Rename  
<br><img src="https://user-images.githubusercontent.com/83845332/194934541-d7889831-abf7-43fc-94fb-9e0942fd3e8a.png"><br>
○ execute Haskell  
<br><img src="https://user-images.githubusercontent.com/83845332/194946073-d0a9e2f9-59f2-4b60-82ec-32f64cd568da.png"><br>
</details>  

