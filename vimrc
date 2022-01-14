call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'

Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-colorscheme-switcher'

call plug#end()

syntax on
colorscheme Atelier_DuneLight

let g:mapleader=','
"map <Leader> <Plug>(easymotion-prefix)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set fileformat=unix

inoremap jk <esc>

set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=v "Включить поддержку мыши
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Вырубаем черточки на табах
"set showtabline=1
 
" Переносим на другую строчку, разрываем строки
"set wrap
"set linebreak

map <C-n> :NERDTreeToggle<CR>
