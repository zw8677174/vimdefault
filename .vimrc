call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'Konfekt/FastFold'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/mru.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'junegunn/goyo.vim'


call plug#end()


"***************  writemod  *********************
" up Goyo
" down Goyo!

"***************  fold  *********************
nmap zuz <Plug>(FastFoldUpdate)
let g:fastfold_savehook = 1
let g:fastfold_fold_command_suffixes =  ['x','X','a','A','o','O','c','C']
let g:fastfold_fold_movement_commands = [']z', '[z', 'zj', 'zk']

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:vimsyn_folding = 'af'
let g:xml_syntax_folding = 1
let g:javaScript_fold = 1
let g:sh_fold_enabled= 7
let g:ruby_fold = 1
let g:perl_fold = 1
let g:perl_fold_blocks = 1
let g:r_syntax_folding = 1
let g:rust_fold = 1
let g:php_folding = 1

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
let g:NERDTreeWinPos='right'
map <F3> :NERDTreeMirror<CR>

map <F3> :NERDTreeToggle<CR>


"***************** color *********************
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

"***************** airline *********************
"let g:airline#extensions#tabline#enabled = 1

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


"***************** alias *********************
map ¡ 1gt
map ™ 2gt
map £ 3gt
map ¢ 4gt
:nn ∞ 5gt
:nn § 6gt
:nn ¶ 7gt
:nn • 8gt
:nn ª 9gt
:nn º :tablast<CR>

nnoremap <alt>f :ag<enter>
nnoremap ∂ :Files<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <s-tab> :bp<ENTER>
nnoremap ∑ :bd<ENTER>
nnoremap ® :noh<ENTER>
nnoremap ß :w<ENTER>
nnoremap ç viwy
nnoremap √ viwpviwy
nnoremap œ :wq<ENTER>
 
noremap ÷ :s/^/\/\/<ENTER>:noh<ENTER>
noremap ÷÷ :s/\/\//<ENTER>:noh<ENTER>
autocmd filetype python  vnoremap <buffer> ÷ :s/^/#<enter>:noh<enter>
autocmd FileType python  vnoremap <buffer> ÷÷ :s/##//<ENTER>:noh<ENTER>

map ¨ bvgu








Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'

call plug#end()


"***************  tree  *********************
"autocmd vimenter * NERDTree
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


"***************** alias *********************
map ¡ 1gt
map ™ 2gt
map £ 3gt
map ¢ 4gt
:nn ∞ 5gt
:nn § 6gt
:nn ¶ 7gt
:nn • 8gt
:nn ª 9gt
:nn º :tablast<CR>

nnoremap <Alt>f :Ag<ENTER>
nnoremap ∂ :Files<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <s-tab> :bp<ENTER>
nnoremap ∑ :bd<ENTER>
nnoremap ® :noh<ENTER>
nnoremap ß :w<ENTER>
nnoremap ç viwy
nnoremap √ viwpviwy
nnoremap œ :wq<ENTER>
 
noremap ÷ :s/^/\/\/<ENTER>:noh<ENTER>
noremap ÷÷ :s/\/\//<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷ :s/^/#<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷÷ :s/##//<ENTER>:noh<ENTER>

map ¨ bvgu





Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'

call plug#end()


"***************  tree  *********************
"autocmd vimenter * NERDTree
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


"***************** alias *********************
map ¡ 1gt
map ™ 2gt
map £ 3gt
map ¢ 4gt
:nn ∞ 5gt
:nn § 6gt
:nn ¶ 7gt
:nn • 8gt
:nn ª 9gt
:nn º :tablast<CR>

nnoremap <Alt>f :Ag<ENTER>
nnoremap ∂ :Files<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <s-tab> :bp<ENTER>
nnoremap ∑ :bd<ENTER>
nnoremap ® :noh<ENTER>
nnoremap ß :w<ENTER>
nnoremap ç viwy
nnoremap √ viwpviwy
nnoremap œ :wq<ENTER>
 
noremap ÷ :s/^/\/\/<ENTER>:noh<ENTER>
noremap ÷÷ :s/\/\//<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷ :s/^/#<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷÷ :s/##//<ENTER>:noh<ENTER>

map ¨ bvgu





Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'

call plug#end()


"***************  tree  *********************
"autocmd vimenter * NERDTree
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


"***************** alias *********************
map ¡ 1gt
map ™ 2gt
map £ 3gt
map ¢ 4gt
:nn ∞ 5gt
:nn § 6gt
:nn ¶ 7gt
:nn • 8gt
:nn ª 9gt
:nn º :tablast<CR>

nnoremap <Alt>f :Ag<ENTER>
nnoremap ∂ :Files<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <s-tab> :bp<ENTER>
nnoremap ∑ :bd<ENTER>
nnoremap ® :noh<ENTER>
nnoremap ß :w<ENTER>
nnoremap ç viwy
nnoremap √ viwpviwy
nnoremap œ :wq<ENTER>
 
noremap ÷ :s/^/\/\/<ENTER>:noh<ENTER>
noremap ÷÷ :s/\/\//<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷ :s/^/#<ENTER>:noh<ENTER>
autocmd FileType python  vnoremap <buffer> ÷÷ :s/##//<ENTER>:noh<ENTER>

map ¨ bvgu






Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'posva/vim-vue'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug '/usr/local/opt/fzf', { 'dir': '~/.fzf', 'do': './install --all' } 
Plug 'junegunn/fzf.vim' 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'

call plug#end()


"***************  tree  *********************
"autocmd vimenter * NERDTree
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


"***************** alias *********************
nnoremap <ESC>d :Files<ENTER>
nnoremap <ESC>f :Ag<ENTER>
nnoremap <tab><tab> :bn<ENTER>
nnoremap <s-tab> :bp<ENTER>
nnoremap <ESC>r :noh<ENTER>
nnoremap <ESC>w :w<ENTER>
nnoremap <ESC>c viwy
nnoremap <ESC>v viwpviwy
nnoremap <ESC>q :wq<ENTER>
 
noremap <ESC>/ :s/^/\/\/<ENTER>:noh<ENTER>
noremap <ESC>/<ESC>/ :s/\/\//<ENTER>:noh<ENTER>
autocmd filetype python,php  vnoremap <buffer> <esc>/ :s/^/#<enter>:noh<enter>
autocmd filetype python,php  vnoremap <buffer> <esc>/<esc>/ :s/##//<enter>:noh<enter>
map <ESC>t :bvgu
map <ESC>e :MRU<enter>
map <ESC>z zr
map <ESC>x zm


