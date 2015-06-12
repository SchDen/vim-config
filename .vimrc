"------------------------------------------------
" BASE SETTINGS
"------------------------------------------------
syntax enable
set background=dark
set tabstop=4
set number
" Space key - <leader>
let mapleader = " "
"------------------------------------------------
" BASE SETTINGS
"------------------------------------------------
syntax enable
set background=dark
set tabstop=4
set number
" Space key - <leader>
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

if has('gui_running')
	" THEME
	colorscheme apprentice
endif
"------------------------------------------------
" /THEME
"------------------------------------------------
"
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
" PLUGINS
"------------------------------------------------
"------------------------------------------------
" /PLUGINS
"------------------------------------------------

"------------------------------------------------
" BASE BINDS
"------------------------------------------------

"------------------------------------------------
" /BASE BINDS
"------------------------------------------------

"------------------------------------------------
" ABBRS
"------------------------------------------------
abbr rev so %
"------------------------------------------------
" /ABBRS
"------------------------------------------------
