set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'hari-rangarajan/CCTree'
Plugin 'easymotion/vim-easymotion'

call vundle#end()

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

filetype plugin indent on

set relativenumber
set number
set tags=tags;
set laststatus=2
set statusline=%F
set statusline+=col:\ %c
set statusline+=%m
set showcmd
vmap <Space> <Leader>
nmap <Space> <Leader>

set hlsearch
set noexpandtab
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
nmap <C-m> :Buffers<CR>
nmap <C-p> :FZF<CR>
nmap <Leader>h :History

execute pathogen#infect()

let NERDTreeShowBookmarks=1
nmap ,f :NERDTreeFind<CR>
nmap <leader>c :ClearBookmarks

nnoremap H gT
nnoremap L gt

nnoremap <leader>t <C-w><C-]><C-w>T

map <C-c> :BD<cr>

vnoremap  <leader>r "hy:%s/<C-r>h//gc<left><left><left>
vnoremap  <leader>k "hy:%s/<C-r>h//gn<CR>

nnoremap o o<Esc>
nnoremap O O<Esc>

let CCTreeCscopeDB="cscope.out"
let g:CCTreeRecursiveDepth=0

command Ter terminal ++curwin
command Cter q! | vsp | terminal ++curwin


let g:EasyMotion_do_mapping = 0 " Disable default mappings
map <leader>z <Plug>(easymotion-bd-f2)
nmap <leader>z <Plug>(easymotion-bd-f2)
let g:EasyMotion_smartcase = 1
map <Leader>f <Plug>(easymotion-f)

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif
vnoremap  <leader>g "hy:grep <C-r>h <CR>:cw<CR>

let @c ='"+y'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"q: - command line history
"vimgrep /malloc/ **/* 
"grep -r malloc *
"copen
".cc
