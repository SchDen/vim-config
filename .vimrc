"Some settings to enable the theme:
syntax enable
set background=dark
set tabstop=4
let g:solarized_termcolors = 256  " New line!!
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
"colorscheme solarized

"------------------------------------------------
" VIM LIB 
"------------------------------------------------
filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') " Адрес до вашего ~/.vim/bundle

Plugin 'vim_lib'

filetype indent plugin on
"------------------------------------------------
" VIM LIB 
"------------------------------------------------

" Другие плагины
