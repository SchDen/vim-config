"------------------------------------------------
" BASE SETTINGS
"------------------------------------------------
syntax enable
set background=dark
set tabstop=4

" Space key - <leader>
set ignorecase                          " Ignore case while searching.

let mapleader = " "
"------------------------------------------------
" BASE SETTINGS
"------------------------------------------------

"------------------------------------------------
" THEME
"------------------------------------------------
let g:molokai_original = 1
set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h13
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set cursorline                          " Highlight the line with the cursor.
set hlsearch                            " Highlight search terms.
set incsearch                           " Highlight matches as you type.
set laststatus=2                        " Always show the status line.
set lazyredraw                          " Don't redraw screen when excuting
                                        " macros, registers, etc.
"set list                                " Show invisible characters.
set mouse=a                             " Enable mouse support.
set mousehide                           " Hide the mouse cursor when typing.
set number


if has('gui_running')
	" THEME
	colorscheme apprentice
endif
"------------------------------------------------
" /THEME
"------------------------------------------------

"------------------------------------------------
" VIM LIB 
"------------------------------------------------
filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') " Адрес до вашего ~/.vim/bundle

Plugin 'vim_lib'
Plugin 'vim_plugmanager'

source ~/.vim/plugins.vim

" ----------------
"  Plugin settings
" ----------------
"--- vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"--- /vim-airline

"--- NERDTree
map <F1> :NERDTreeToggle<CR>
nnoremap <leader>e :NERDTreeFind<CR>
"--- /NERDTree

filetype indent plugin on
"------------------------------------------------
" /VIM LIB 
"------------------------------------------------

"------------------------------------------------
" BASE BINDS
"------------------------------------------------
" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
"------------------------------------------------
" /BASE BINDS
"------------------------------------------------

"------------------------------------------------
" ABBRS
"------------------------------------------------
abbr rev so %
abbr vrc e ~/.vimrc
abbr vrc e .vimrc
"------------------------------------------------
" /ABBRS
"------------------------------------------------
