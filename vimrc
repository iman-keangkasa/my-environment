set tabstop=4
set autoindent
set number
nmap <F12> :!clear; python %<CR>
syntax enable
set background=dark
colorscheme solarized

"This sets the vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format

Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

"This is the latex package for vim
Plugin 'lervag/vimtex'

"Plugin 'altercation/vim-colors-solarized'
" Now we can turn our filetype functionality back on
filetype plugin indent on

