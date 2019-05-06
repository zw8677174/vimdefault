call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

call plug#end()


"***************  tree  *********************
autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
" 直接打开文件夹
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"如果是最后一个就关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
let g:NERDTreeWinPos='right'
map <F3> :NERDTreeMirror<CR>

map <F3> :NERDTreeToggle<CR>


"***************** color *********************
let g:solarized_termcolors=256
syntax enable
set background=light
colorscheme solarized

"***************** airline *********************
"let g:airline#extensions#tabline#enabled = 1

"***************** complete *********************


"***************** style *********************
set showmatch
set cul
set nu 
set ts=4
set expandtab
set autoindent
set sw=4
set tabstop=4 
