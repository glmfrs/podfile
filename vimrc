runtime! debian.vim
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
syntax on
set paste
set ruler
set number
set expandtab
set nocompatible
set shiftwidth=4
set softtabstop=4
set background=dark