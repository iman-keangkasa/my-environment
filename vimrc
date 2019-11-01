"set tabstop=2

"indentation fix
set expandtab
set shiftwidth=2
set softtabstop=2

set smartindent
set number
"set shiftwidth=4
nmap <F12> :!clear; python %<CR>
syntax enable
set background=dark
colorscheme solarized
"making sure this colorscheme follow setting for the terminal
hi Normal guibg=NONE ctermbg=NONE
"This sets the vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format

Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
"Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

"This is the latex package for vim
"Plugin 'lervag/vimtex'

"Plugin 'altercation/vim-colors-solarized'
" Now we can turn our filetype functionality back on
call vundle#end()
filetype plugin indent on

"syntax highlighting for .launch and .urdf as a xml file
au bufnewfile,Bufread *.launch setf xml
au bufnewfile,Bufread *.xacro setf xml
au bufnewfile,Bufread *.urdf setf xml
