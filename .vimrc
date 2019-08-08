set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'hari-rangarajan/CCTree'

call vundle#end()
filetype plugin indent on

set number
set autochdir
set tags=tags;
set laststatus=2
set statusline=%F
set statusline+=col:\ %c
set statusline+=%m
let mapleader=" "

set hlsearch
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set cindent

filetype plugin on
let NERDSpaceDelims=1


vnoremap <Tab> >gV
vnoremap <S-Tab> <gV

set background=dark
syntax on
hi Type ctermfg=100
hi Constant ctermfg=100
hi Identifier ctermfg=100
hi Statement ctermfg=100
hi PreProc ctermfg=100
hi Number ctermfg=100
hi Comment ctermfg=blue
hi Special ctermfg=100
hi ExtraWhiteSpace ctermbg=red guibg=red
match ExtraWhiteSpace /\s\+$/

inoremap <C-l> <C-n>

map ,* *<C-O>:%s///gn<CR>

"set cscoperelative
"ctags -R --exclude=dpdk-pmd-ts.run --c-kinds=+pfl

map <leader>\ :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set cc=81

set runtimepath^=~/.vim/bundle/ctrlp.vim
nmap <C-m> :CtrlPBuffer<CR>

execute pathogen#infect()

let NERDTreeShowBookmarks=1
nmap ,f :NERDTreeFind<CR>
nmap <leader>c :ClearBookmarks

nnoremap H gT
nnoremap L gt

nnoremap <leader>w <C-w>w

map <C-c> :BD<cr>

vnoremap  <leader>r "hy:%s/<C-r>h//gc<left><left><left>
vnoremap  <leader>k "hy:%s/<C-r>h//gn<CR>

nnoremap o o<Esc>
nnoremap O O<Esc>

let CCTreeCscopeDb="cscope.out"
let g:CCTreeRecursiveDepth=0
