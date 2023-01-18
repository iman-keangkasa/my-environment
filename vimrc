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
"nmap <F12> :!clear; python %<CR>
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

" MIGRATING FROM VUNDLE TO VIM-PLUG
" R filetype off
" R set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format

Plug 'gmarik/vundle'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'scrooloose/nerdtree'
"Plug 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim'}
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jremmen/vim-ripgrep'
Plug 'mileszs/ack.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
"Plug 'vim-scripts/valgrind.vim'
" We could also add repositories with a ".git" extension
"Plug 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
"Plug 'Buffergator'

"This is the latex package for vim
"Plug 'lervag/vimtex'

"Plug 'altercation/vim-colors-solarized'
" Now we can turn our filetype functionality back on

" A vim Plug for Lively Previewing LaTeX PDF
Plug 'xuhdev/vim-latex-live-preview'

call plug#end()
filetype plugin on

"syntax highlighting for .launch and .urdf as a xml file
au bufnewfile,Bufread *.launch setf xml
au bufnewfile,Bufread *.xacro setf xml
au bufnewfile,Bufread *.urdf setf xml
au bufnewfile,Bufread *.world setf xml
au bufnewfile,Bufread *.sdf setf xml
au bufnewfile,Bufread CMakeLists.txt setf cmake

"enable syntax highlighting for python
"let python_highlight_all=1
"
"Remapping the arrow key in buffers/panes
nnoremap <C-K> <C-W><C-K>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"nnoremap <C-Up> <C-W><C-K>
"nnoremap <C-Down> <C-W><C-J>
"nnoremap <C-Left> <C-W><C-H>
"nnoremap <C-Right> <C-W><C-L>

"NERDTREE specific <Leader> key is backlash "\"
nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ack.vim --- {{{

" Use ripgrep for searching ⚡️
" Options include:
" --vimgrep -> Needed to parse the rg response properly for ack.vim
" --type-not sql -> Avoid huge sql file dumps as it slows down the search
" --smart-case -> Search case insensitive if all lowercase pattern, Search case sensitively otherwise
let g:ackprg = 'rg --vimgrep --type-not sql --smart-case'

" Auto close the Quickfix list after pressing '<enter>' on a list item
let g:ack_autoclose = 1

" Any empty ack search will search for the work the cursor is on
let g:ack_use_cword_for_empty_search = 1

" Don't jump to first match
cnoreabbrev Ack Ack!

" Maps <leader>/ so we're ready to type the search keyword
nnoremap <Leader>/ :Ack!<Space>
" }}}

" Navigate quickfix list with ease
nnoremap <silent> [q :cprevious<CR>
nnoremap <silent> ]q :cnext<CR>

" This will set new window (buffer) as a vertical split pane when selecting
" result from quicklist
set switchbuf=useopen,vsplit

"asyncomplete setting
let g:asyncomplete_auto_popup = 1
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

" allow modifying the completeopt variable, or it will
" be overridden all the time
let g:asyncomplete_auto_completeopt = 1

"set completeopt=menuone,noinsert,noselect,preview
