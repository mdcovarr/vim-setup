" Needed for gruxbox to work

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdTree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fireplace'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/joshdick/onedark.vim.git'

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'walm/jshint.vim'



call plug#end()


" Python configuration
syntax on
filetype indent plugin on


" Set for color scheme
set t_Co=256

" ---------------------------------------------
" onedark.vim Settings
" ---------------------------------------------


" ---------------------------------------------
" nerdTree Settings
" ---------------------------------------------

" nerdTree initialization with vim opening with a file
"autocmd vimenter * NERDTree

" nerdTree initializationwith vim openin with no specified file
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" command to open NERDTree with <C-n>
map <C-n> :NERDTreeToggle<CR>


" ---------------------------------------------
" Vim split screen window movement
" ---------------------------------------------
map <C-h>h <C-w>h
map <C-h>j <C-w>j
map <C-h>k <C-w>k
map <C-h>l <C-w>l


" ---------------------------------------------
" Automatic append closing curly brace
" ---------------------------------------------
inoremap {	{}<Left>
inoremap {<CR>	{<CR>}<Esc>O
inoremap {{	{
inoremap {}	{}


" ---------------------------------------------
" While in directory view, used to open file in split screen
" ---------------------------------------------
" set path+=/home/mcovarru/**



" ---------------------------------------------
" Split screen key bindings
" ---------------------------------------------
" Split vertical on initial split screen
set splitright

" F8 hot key to split screen in vim
map <F8> : vertical wincmd f<CR>



" ---------------------------------------------
" Vim native settings
" ---------------------------------------------
set modifiable
set cursorline
"set cursorcolumn
set number
"set relativenumber
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set showcmd



" ---------------------------------------------
" Gruvbox Color Scheme Settings
" ---------------------------------------------
colorscheme gruvbox
set background=dark


" ---------------------------------------------
" Airline & Airline Themes Settings
" ---------------------------------------------
let g:airline_theme='zenburn'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_spell=1
let g:airline_powerline_font=1
let g:airline_symbols_ascii=1


" ---------------------------------------------
" Syntastic Syntax Checking Settings
" ---------------------------------------------
map <F5> : :SyntasticToggleMode<CR>
set statusline=%f
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Start syntasting without automatically checking for errors
let g:syntastic_mode_map = {"mode": "passive"}

" ---------------------------------------------
" Highlight Trailing Whitespaces
" ---------------------------------------------
highlight RedundantSpaces ctermbg=darkred guibg=#382424
2match RedundantSpaces /\s\+$/


" ---------------------------------------------
" Highlight when you go beyond 120 characters
" ---------------------------------------------
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%121v.\+/


