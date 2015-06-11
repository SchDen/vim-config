syntax enable
set background=dark
set tabstop=4

" THEME
let g:rehash256 = 1
let g:molokai_original = 1

"------------------------------------------------
" VIM LIB 
"------------------------------------------------
filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') " Адрес до вашего ~/.vim/bundle

Plugin 'vim_lib'
Plugin 'vim_plugmanager'

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

