" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
			 " https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" :PlugInstall

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall



set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" Plugin 'hari-rangarajan/CCTree'
call vundle#begin()

Plugin 'easymotion/vim-easymotion'

call vundle#end()
filetype plugin indent on



call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'kshenoy/vim-signature'
Plug 'preservim/nerdcommenter'
Plug 'junegunn/vim-easy-align'
Plug 'fatih/vim-go'
"GoImplements, GoDefType

call plug#end()

let g:go_fmt_autosave = 0
let g:go_mod_fmt_autosave = 0
let g:go_imports_autosave = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
nmap <leader>i :GoImplements<CR>
nmap <leader>t :GoDefType<CR>
nmap <leader>g <c-w>f<c-w>L
nmap <leader>u :GoBuildTags ""<CR>

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

inoremap <C-l> <C-n>

map ,* *<C-O>:%s///gn<CR>

map <leader>\ :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
nmap <C-m> :Buffers<CR>
nmap <C-p> :FZF<CR>
nmap <Leader>h :History


let NERDTreeShowBookmarks=1
nmap ,f :NERDTreeFind<CR>

nnoremap H gT
nnoremap L gt

nnoremap <leader>t <C-w><C-]><C-w>T

map <C-c> :BD<cr>

vnoremap  <leader>r "hy:%s/<C-r>h//gc<left><left><left>
vnoremap  <leader>k "hy:%s/<C-r>h//gn<CR>

nnoremap o o<Esc>
nnoremap O O<Esc>

command Ter terminal ++curwin
command Vter vsp | Ter
command T :tabe
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


packadd termdebug
let g:termdebug_wide=1

nnoremap <leader>p li<space><esc>p
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt

noremap <leader>v :set paste<CR>"+p:set nopaste<CR>
