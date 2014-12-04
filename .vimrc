" ==============================================================
" Jonathon's .vimrc
"
" ==============================================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Required for Vundle to manage Vundle
Plugin 'gmarik/Vundle.vim'

" PLUGINS
Plugin 'scrooloose/nerdtree.git'

Plugin 'sjl/badwolf'

Plugin 'morhetz/gruvbox'

Plugin 'Valloric/YouCompleteMe'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdcommenter'

Plugin 'xuhdev/vim-latex-live-preview'


call vundle#end()
filetype plugin indent on

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

" Set colours
colorscheme badwolf


" Disable arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Formatting {

    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set background=dark
    set autoindent
    filetype plugin indent on
    syntax on
    set history=10000
    set incsearch
    set wildmenu
    set wildmode=list:longest,full
" }

" Custom Mappings {

    let mapleader= '-'

    " Edit and source ~/.vimrc easily
    nnoremap <leader>ev :vsplit $MYVIMRC<cr>
    nnoremap <leader>hv :split $MYVIMRC<cr>
    nnoremap <leader>sv :source $MYVIMRC<cr>
    nnoremap <leader>nt :NERDTree<cr>

    " Move around multiple splits
    nmap <silent> <A-Up> :wincmd k<CR>
    nmap <silent> <A-Down> :wincmd j<CR>
    nmap <silent> <A-Left> :wincmd h<CR>
    nmap <silent> <A-Right> :wincmd l<CR>

    "Copy and paste system clipboard
    nnoremap <leader>p "+p
    nnoremap <leader>y "+y

    " Highlight a word
    nnoremap <space> viw
    " Uppercase a word
    nnoremap <c-u> viwU
    " Quick move down and up
    nnoremap <cr> 20j
    nnoremap <backspace> 20k
    " Single quotation a word
    nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel
    " Double quotation a word
    nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
    " Put a semicolon on the end of the line
    nnoremap <leader>; $a;<esc>
    nnoremap <leader>: $a:<esc>

    nnoremap <leader><tab> i<tab><esc>hh

    nnoremap <leader>0 0eb
    nnoremap <leader>4 $
    
    inoremap jk <esc>
    inoremap <c-u> <esc>viwU

" }

" { Common Abbrv

    iabbrev adn and
    iabbrev waht what
    iabbrev tehn then
    iabbrev enviroment environment
    iabbrev destory destroy

" Macros

    iabbrev incio #include <iostream>
    iabbrev mmain int main()<cr>{
    iabbrev stdmain #include <iostream><cr><cr>int main()<cr>{

    iabbrev startalg \documentclass[11pt]{article}<cr>\usepackage{amsmath}<cr>\usepackage{qtree}<cr>\usepackage{algorithm}<cr>\usepackage{algorithmic}<cr><cr>\begin{document}

    iabbrev gwbi document.get.window.byId

    iabbrev startmath \documentclass[12pt]{amsart}<cr><cr>\title{}<cr><cr>\begin{document}<cr>\maketitle

    " Java
    iabbrev pis private static
    iabbrev pus public static


" }
" Set LaTeX preview to okular
    let g:livepreview_previewer = 'okular'


" PLUGINS
