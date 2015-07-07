"------------------------------------------------
" BASE SETTINGS
"------------------------------------------------  
syntax enable
set background=dark
set tabstop=4
set path=$PWD/**
"set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
set nowrap

" Disable beep
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=
" /Disable beep

" Local
setlocal spell spelllang=ru_yo,en_us
" /Local

" Russian key
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
" /Russian key

" Swap files
set directory=$HOME/.vim/swapfiles
" /Swap files

" Ignore case while searching.
set ignorecase                          
" умные автоотступы
set ai 
" отступы в стиле Си
set cin 
set smartindent
" Преобразование Таба в пробелы
set expandtab


" Увеличение истории
set history=200

" Space key - <leader>
let mapleader = " "

" Отображение спецсимволов
set list listchars=tab:⋮\ ,trail:·
"------------------------------------------------
" /BASE SETTINGS
"------------------------------------------------

"------------------------------------------------
" THEME
"------------------------------------------------
let g:molokai_original = 1
" Set fonts
if has("gui_macvim")
    set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline:h13
else
    set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline\ 11
endif

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
set scrolloff=4                         " Keep 4 lines above/below the cursor.
set shiftwidth=4                        " Use four spaces when auto-indenting.
set smartindent                         " Smart autoindenting for new lines.
set smarttab                            " Use shiftwidth when using <Tab> in
                                        " front of a line.
set softtabstop=4                       " How many spaces should a tab be
                                        " when hitting <Tab> or backspace.
set synmaxcol=240                       " No syntax highlighting on long lines.

set wildmenu                            " Autocomplete commands.
set wildmode=longest:full,full          " Autocomplete til the longest common
                                        " string and the next full match.
" Подсветка после 80 строк 
if exists('+colorcolumn')
  set colorcolumn=120
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

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

"--- Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=3
let g:syntastic_warning_symbol = "⚠"
"--- /Syntastic

"--- Switcher
let g:switch_definitions =
    \ [
    \   [';',',', '.'],
    \   ['get','set'],
    \   ['get(','set('],
    \   ['.get(','.set('],
    \   ['asc','desc'],
    \   ['public','protected','private'],
    \   ['true','false'],
    \   ['assertTrue','assertFalse'],
    \   ['addClass','removeClass'],
    \   ['disable','enable'],
    \   ['left','right'],
    \ ]

" Bind
noremap ,, :Switch<CR>
"--- /Switcher

"--- Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"--- /Snippets

filetype indent plugin on
"------------------------------------------------
" /VIM LIB 
"------------------------------------------------


"------------------------------------------------
" AUTO COMMAND
"------------------------------------------------
if has('autocmd')

endif
"------------------------------------------------
" /AUTO COMMAND
"------------------------------------------------

"------------------------------------------------
" BASE BINDS
"------------------------------------------------
" Copy in system bufer
nnoremap y "+y
vnoremap y "+y
" /

" Tab/Shift + tab
vmap <Tab> >gv
vmap <S-Tab> <gv
inoremap <Tab> <C-t>
inoremap <S-Tab> <C-d>
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" /

" Select in quotes
nnoremap <C-a> vi'
" /

" No move to next
nnoremap * *N
" /

" В визуальном режиме по команде * подсвечивать выделение
vnoremap * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>

" Hide heightlight 
map <silent><leader>h :nohl<CR> :set nospell<CR>

" Find 
map <leader>f :find 

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>
" /

" Use space+w for saving, also in Insert mode
noremap <leader>w :write<CR>
vnoremap <leader>w <esc>:write<CR>
" /
"inoremap <leader>w <esc>:write<CR>

" Use space+w for saving, also in Insert mode
noremap <leader>j :bp<CR>
noremap <leader>k :bn<CR>
" /

" Set en local after esc key
"imap :!setxkbmap us:!setxkbmap us,ru
"nmap :!setxkbmap us:!setxkbmap us,ru
" /

"------------------------------------------------
" /BASE BINDS
"------------------------------------------------

"------------------------------------------------
" Functions
"------------------------------------------------

"--- Автодополнение на Tab
function! SuperCleverTab()
	if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
		return "\<Tab>"
	else
		return "\<C-p>"
	endif
endfunction

inoremap <Tab> <C-R>=SuperCleverTab()<cr>
"--- Автодополнение на Tab

"--- Удаление лидирующих пробелов
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd FileType javascript,php,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()
"--- Удаление лидирующих пробелов

"------------------------------------------------
" /Functions
"------------------------------------------------

"------------------------------------------------
" ABBRS
"------------------------------------------------
abbr rev so %
abbr vrc e ~/.vimrc
abbr pvrc e .vimrc
"------------------------------------------------
" /ABBRS
"------------------------------------------------
