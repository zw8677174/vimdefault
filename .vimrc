call plug#begin('~/.vim/plugged')

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

nnoremap ƒ :Ag<ENTER>
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




"*******************************
"151.101.72.133 raw.githubusercontent.com
