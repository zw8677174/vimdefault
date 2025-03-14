call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'mhinz/vim-startify'
Plug 'junegunn/vim-easy-align'
Plug 'Konfekt/FastFold'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/mru.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/goyo.vim'
Plug 'davidhalter/jedi-vim'



call plug#end()

set rtp+=~/.fzf

"***************  writemod  *********************
" up Goyo
" down Goyo!

"***************  fold  *********************
nmap zuz <Plug>(FastFoldUpdate)
"let g:fastfold_savehook = 1
"let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
"let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']
"
"let g:markdown_folding = 1
"let g:tex_fold_enabled = 1
"let g:vimsyn_folding = 'af'
"let g:xml_syntax_folding = 1
"let g:javaScript_fold = 1
"let g:sh_fold_enabled= 7
"let g:ruby_fold = 1
"let g:perl_fold = 1
"let g:perl_fold_blocks = 1
"let g:r_syntax_folding = 1
"let g:rust_fold = 1
"let g:php_folding = 1

"***************  format  *********************
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"***************  tree  *********************

"autocmd vimenter * NERDTree
"autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
" 直接打开文件夹
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"如果是最后一个就关闭vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 
let g:NERDTreeWinPos='left'
map <tab> :NERDTreeMirror<CR>
map <tab> :NERDTreeToggle<CR>
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
"显示隐藏文件
let NERDTreeShowHidden=1



"***************** color *********************
let g:solarized_termcolors=256
set t_Co=256
syntax enable
"set background=light
set background=dark
colorscheme solarized

"***************** airline *********************
let g:airline#extensions#tabline#enabled = 1

"***************** complete *********************

autocmd FileType java setlocal omnifunc=javacomplete#Complete

nmap \ <Plug>(JavaComplete-Imports-Add)
nmap ∆ <Plug>(JavaComplete-Imports-Add)
imap ∆ <Plug>(JavaComplete-Imports-Add)
nmap ˚ <Plug>(JavaComplete-Imports-AddSmart)
imap ˚ <Plug>(JavaComplete-Imports-AddSmart)

"***************** style *********************
set showmatch
set cul
set nu 
set ts=4
set expandtab
set autoindent
set sw=4
set tabstop=4 
set expandtab


if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif


"***************** alias *********************
nnoremap <ESC><ESC> :w<ENTER>
nnoremap <ESC> :w<ENTER>
nnoremap <ESC>d :Files<ENTER>
nnoremap <ESC>f :Ag<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <tab> <C-w>w
nnoremap <ESC>r :noh<ENTER>
nnoremap <ESC>s :w<ENTER>
nnoremap <ESC>w viw
nnoremap <ESC>c viwy
nnoremap <ESC>v viwpviwy
"nnoremap <ESC>q :q<ENTER>
nnoremap <ESC>q :bdelete<ENTER>
nnoremap  ggVG
nnoremap <ESC>t<ESC>t :s/\(_\)\([a-z]\)/\U\2/g<ENTER>

noremap <ESC>/ :s/^/\/\/<ENTER>:noh<ENTER>
noremap <ESC>/<ESC>/ :s/\/\//<ENTER>:noh<ENTER>
autocmd filetype python,php  vnoremap <buffer> <esc>/ :s/^/#<enter>:noh<enter>
autocmd filetype python,php  vnoremap <buffer> <esc>/<esc>/ :s/##//<enter>:noh<enter>
autocmd filetype go  vnoremap <buffer> <esc>/ :s/^/\/\/<enter>:noh<enter>
autocmd filetype go  vnoremap <buffer> <esc>/<esc>/ :s/\/\///<enter>:noh<enter>
map <ESC>t :bvgu
map <ESC>e :MRU<enter>
map <ESC>z zr
map <ESC>x zm


let g:ycm_gopls_binary_path = expand('$GOPATH/bin/gopls')


set mouse=a
