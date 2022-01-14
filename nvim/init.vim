"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
call plug#begin('~/.config/nvim/plugged')
" --- Оформление ---
"Plug 'vim-airline/vim-airline'        " Крутая строка состояния внизу экрана
"Plug 'vim-airline/vim-airline-themes'
"Plug 'joshdick/onedark.vim'          " Тема для вима
"Plug 'challenger-deep-theme/vim'      " Тема вима
"Plug 'Yggdroot/indentLine'            " Точки для табов

Plug 'majutsushi/tagbar'              " Показывает дерево классов и функций, можно очень быстро перемещаться кнопка F8
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Plug 'jiangmiao/auto-pairs'
Plug 'easymotion/vim-easymotion'
Plug 'flazz/vim-colorschemes'        " Может менять цветовую схему. Список схем: https://github.com/flazz/vim-colorschemes/tree/prep

" --- Разное ---
"Plug 'cohama/lexima.vim'              " Закрывает автоматом скобки
"Plug 'powerman/vim-plugin-ruscmd'     " Русская раскладка в командом режиме
call plug#end()

syntax on
colorscheme Atelier_DuneLight
"colorscheme Atelier_DuneDark
"colorscheme molokai
"colorscheme Monokai
"colorscheme oceanlight
" Включаем номерацию строк
set number

" Орфография для английского и русского языка
set spelllang=en,ru
" Два пробела при табуляции в качестве отступа для js/html/xml файлов, для
" остальных 4
set tabstop=4
set softtabstop=4
set shiftwidth=4

set noswapfile
set smarttab
set autoindent
set smartindent
set fileformat=unix

set mousehide "Спрятать курсор мыши когда набираем текст
set mouse=v "Включить поддержку мыши
set t_vb= "Не пищать! (Опции 'не портить текст', к сожалению, нету)
" Вырубаем черточки на табах
"set showtabline=1
 
" Переносим на другую строчку, разрываем строки
"set wrap
"set linebreak

set iminsert=0  " Чтобы при старте ввод был на английском, а не русском (start > i)
set imsearch=0  " Чтобы при старте поиск был на английском, а не русском (start > /)

" Автоматический перенос текста для текстовых файлов
autocmd BufRead,BufNewFile *.txt  setlocal textwidth=80

" Отключаем стрелочки
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

let g:mapleader=','
"map <Leader> <Plug>(easymotion-prefix)
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

inoremap jk <esc>

" Перечитать .vimrc / init
noremap <F3> :source ~/.config/nvim/init.vim<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>
"for plug tagbar
nmap <F8> :TagbarToggle<CR> 
