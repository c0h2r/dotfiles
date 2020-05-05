"lang en
"set visualbell t_vb=
set encoding=utf8
"set exrc    "allow using local configs
"set secure  "don't allow unsafe commands in them
"set number
"set ls=2
"syntax on
call plug#begin(stdpath('data') . '/plugged')
Plug 'scrooloose/nerdtree',{'on': 'NERDTreeToggle'}
Plug 'nanotech/jellybeans.vim'  "theme
Plug 'dylanaraps/wal.vim'       "pywal theme
Plug 'vim-airline/vim-airline' 
Plug 'ycm-core/YouCompleteMe' 
Plug 'garbas/vim-snipmate'		" Snippets manager
Plug 'MarcWeber/vim-addon-mw-utils'	" dependencies #1
Plug 'tomtom/tlib_vim'		" dependencies #2
Plug 'majutsushi/tagbar',{'on': 'TagbarToggle'}
Plug 'honza/vim-snippets'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'luochen1990/rainbow'
"Plug 'Valloric/YouCompleteMe'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline-themes'
Plug 'klen/python-mode'	        " Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
Plug 'davidhalter/jedi-vim' 		" Jedi-vim autocomplete plugin
Plug 'mitsuhiko/vim-jinja'		" Jinja support for vim
Plug 'mitsuhiko/vim-python-combined'  " Combined Python 2/3 for Vim
Plug 'sheerun/vim-polyglot'
Plug 'rakr/vim-one'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-scripts/SingleCompile'
Plug 'mhinz/vim-startify'
Plug 'vim-syntastic/syntastic'
Plug 'lyokha/vim-xkbswitch' "auto layout switching
Plug 'skammer/vim-css-color'
"LaTeX
"Plug 'lervag/vimtex'
"Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'donRaphaco/neotex', { 'for': 'tex' }

call plug#end() 
set lazyredraw
set smartcase
set undofile
let g:rainbow_active = 1
let g:XkbSwitchEnabled = 1
let g:startify_fortune_use_unicode = 1
let g:startify_custom_header = [
\ ' ████     ██                  ██      ██ ██            ', 
\ '░██░██   ░██                 ░██     ░██░░             ', 
\ '░██░░██  ░██  █████   ██████ ░██     ░██ ██ ██████████ ',
\ '░██ ░░██ ░██ ██░░░██ ██░░░░██░░██    ██ ░██░░██░░██░░██',
\ '░██  ░░██░██░███████░██   ░██ ░░██  ██  ░██ ░██ ░██ ░██',
\ '░██   ░░████░██░░░░ ░██   ░██  ░░████   ░██ ░██ ░██ ░██',
\ '░██    ░░███░░██████░░██████    ░░██    ░██ ███ ░██ ░██',
\ '░░      ░░░  ░░░░░░  ░░░░░░      ░░     ░░ ░░░  ░░  ░░ ',
\ ]
"=====================================================
" General settings
"=====================================================
"q 
"set backspace=indent,eol,start
""aunmenu Help.
""aunmenu Window.
"let no_buffers_menu=1
"set mousemodel=popup
"set ruler
"set completeopt-=preview
"set gcr=a:blinkon0
"if has("gui_running")
"  set cursorline
"endif
""set ttyfast
"set smartcase
"" включить подсветку кода
"syntax on
"if has("gui_running")
"" GUI? устаналиваем тему и размер окна
"  "set lines=50 columns=125
"  au GUIEnter * simalt ~x
"  colorscheme jellybeans
"  set guioptions= 
"  set showtabline=0
"	"set guifont=Fira_Code:h12
"endif
"set background=dark
"colorscheme one
"highlight Comment cterm=italic gui=italic
"q
"colorscheme jellybeans
colorscheme wal
hi Normal guibg=NONE ctermbg=NONE
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
let g:livepreview_previewer = 'zathura'
"set guifont=Fira_Code:h12
"на маке vim?
"if has("mac")
"  set guifont=Consolas:h13
"  set fuoptions=maxvert,maxhorz
"else
"" дефолтный GUI
"set guifont=Fira_Code:h12
"set renderoptions=type:directx
"endif
"else
"" терминал?
"  colorscheme myterm
"endif
"tab sball
"set switchbuf=useopen
"sleep 1
"if exists('g:GuiLoaded')
"    GuiFont! Fira Code:h12
"    set cursorline
"    set termguicolors
"    set linespace=8
"endif
"if exists('g:GtkGuiLoaded')
"  call rpcnotify(1,'Gui','Font','Fira Code  12')
"  call rpcnotify(1, 'Gui', 'FontFeatures', 'PURS, cv17')
"  set termguicolors
"  set cursorline
"  set linespace=8
"endif

"##########
""  отключаем пищалку и мигание
"set visualbell t_vb= 
""set novisualbell       
"if has('autocmd') && has('gui')
"    au GUIEnter * set t_vb=
"endif
"imap :!setxkbmap us:!setxkbmap us,ru
"nmap :!setxkbmap us:!setxkbmap us,ru
set keymap=russian-jcukenwin            "переключение раскладки на русский по ctrl+6, не ломает коммандный режим
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan

set cursorline
"set linespace=8
""set encoding=utf-8	     " utf-8 по дефолту в файлах
set ls=2             " всегда показываем статусбар
set incsearch	     " инкреминтируемый поиск
set hlsearch	     " подсветка результатов поиска
set nu	             " показывать номера строк
set scrolloff=5	     " 5 строк при скролле за раз
"
"" отключаем бэкапы и своп-файлы
set nobackup 	     " no backup files
set nowritebackup    " only in case you don't want a backup file while editing
set noswapfile 	     " no swap files
"
"" прячем панельки
""set guioptions-=m   " меню
""set guioptions-=T    " тулбар
""set guioptions-=r   "  скроллбары
"
"" настройка на Tab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
"
""  при переходе за границу в 120 символов в Ruby/Python/js/C/C++ подсвечиваем на темном фоне текст
"augroup vimrc_autocmds
"    autocmd!
"    autocmd FileType ruby,python,javascript,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
"    autocmd FileType ruby,python,javascript,c,cpp match Excess /\%120v.*/
"    autocmd FileType ruby,python,javascript,c,cpp set nowrap
"augroup END
" указываем каталог с настройками SnipMate
let g:snippets_dir = "~/.vim/vim-snippets/snippets"
"
"" настройки Vim-Airline
""set laststatus=2
"let g:airline_theme='badwolf'
let g:airline_theme='wal'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_section_b = '%{strftime("%H:%M")}'
""set laststatus=2
let g:one_termcolors=256
let g:one_allow_italics = 1
let g:enable_bold_font = 1
" TagBar настройки
map <F4> :TagbarToggle<CR>
let g:tagbar_autofocus = 0 " автофокус на Tagbar при открытии
"
"" NerdTree настройки
""let g:webdevicons_enable_nerdtree = 1
"" whether or not to show the nerdtree brackets around flags
let NERDTreeQuitOnOpen=1
""let g:webdevicons_conceal_nerdtree_brackets = 1
""let g:webdevicons_enable = 1
""let g:webdevicons_conceal_nerdtree_brackets = 1
""let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = '*'
map <C-n> :NERDTreeToggle<CR>
""игноррируемые файлы с расширениями
"let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$', '\.class$', 'pip-log\.txt$', '\.o$']  
"
"" TaskList настройки
map <F2> :TaskList<CR> 	   " отобразить список тасков на F2
"
"" Работа буфферами
map <C-q> :bd<CR> 	   " CTRL+Q - закрыть текущий буффер
""=====================================================
"" Python-mode settings
""=====================================================
"" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
"
"" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
"" провека кода после сохранения
let g:pymode_lint_write = 1
"
"" поддержка virtualenv
let g:pymode_virtualenv = 1
"
"" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'
"
"" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" отключить autofold по коду
let g:pymode_folding = 0

"" возможность запускать код
let g:pymode_run = 0
" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0
"=====================================================
" User hotkeys
"=====================================================
" ConqueTerm
nnoremap <F5> :SCCompileRun<CR>
"" а debug-mode на <F6>
nnoremap <F6> :exe "ConqueTermSplit ipython " . expand("%")<CR>
let g:ConqueTerm_StartMessages = 0
let g:ConqueTerm_CloseOnEnd = 0

"" проверка кода в соответствии с PEP8 через <leader>p
autocmd FileType python map <buffer> <leader>8 :PymodeLint<CR>
"
"" автокомплит через <Ctrl+Space>
"inoremap <C-space> <C-x><C-o>
"
"" переключение между синтаксисами
"nnoremap <leader>Th :set ft=htmljinja<CR>
"nnoremap <leader>Tp :set ft=python<CR>
"nnoremap <leader>Tj :set ft=javascript<CR>
"nnoremap <leader>Tc :set ft=css<CR>
"nnoremap <leader>Td :set ft=django<CR>
"=====================================================
"" Languages support
""=====================================================
"" --- Python ---
autocmd FileType python set completeopt-=preview " раскомментируйте, в случае, если не надо, чтобы jedi-vim показывал документацию по методу/класс
"autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
"\ formatoptions+=croq softtabstop=4 smartindent
"\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
"autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,c
"
"" --- JavaScript ---
"let javascript_enable_domhtmlcss=1
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd BufNewFile,BufRead *.json setlocal ft=javascript
"
"" --- HTML ---
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"
"" --- template language support (SGML / XML too) ---
"autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
"autocmd bufnewfile,bufread *.rhtml setlocal ft=eruby
"autocmd BufNewFile,BufRead *.mako setlocal ft=mako
"autocmd BufNewFile,BufRead *.tmpl setlocal ft=htmljinja
"autocmd BufNewFile,BufRead *.py_tmpl setlocal ft=python
"let html_no_rendering=1
"let g:closetag_default_xml=1
"let g:sparkupNextMapping='<c-l>'
"autocmd FileType html,htmldjango,htmljinja,eruby,mako let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,htmljinja,eruby,mako source ~/.vim/scripts/closetag.vim
"
"" --- CSS ---
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
:set cc=
