"set tabstop=2

"indentation fix 1
"set expandtab
"set shiftwidth=2
"set softtabstop=2}
"set term=tmux-256color
set encoding=utf-8

"indentation fix 2 [April 3, 2020] to fix python
set smartindent
set number

"set shiftwidth=4
nmap <F12> :!clear; python %<CR>
syntax enable
set background=dark

"set term=xterm-256color
"colorscheme default
colorscheme solarized

"making sure this colorscheme follow setting for the terminal
hi Normal guibg=NONE ctermbg=NONE

"this line configure the spellcheck highlight
"cterm=none means there is no underline bold italize
"ctermfg is color of text, ctermbg is the highligth of text
hi SpellBad cterm=none ctermfg=17 ctermbg=136 


"This sets the vundle 
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
"Plugin 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim'}
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'vim-scripts/valgrind.vim'
" We could also add repositories with a ".git" extension
"Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plugin 'Buffergator'

"This is the latex package for vim
"Plugin 'lervag/vimtex'

"Plugin 'altercation/vim-colors-solarized'
" Now we can turn our filetype functionality back on

" A vim Plugin for Lively Previewing LaTeX PDF
Plugin 'xuhdev/vim-latex-live-preview'

call vundle#end()
filetype plugin indent on

"syntax highlighting for .launch and .urdf as a xml file
au bufnewfile,Bufread *.launch setf xml
au bufnewfile,Bufread *.xacro setf xml
au bufnewfile,Bufread *.urdf setf xml
au bufnewfile,Bufread CMakeLists.txt setf cmake

"enable syntax highlighting for python
"let python_highlight_all=1
"
"Remapping the arrow key in buffers/panes
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"NERDTREE specific <Leader> key is backlash "\"
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
