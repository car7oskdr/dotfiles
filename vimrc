set rtp+=~/.vim/bundle/Vundle.vim
" =====================================C7L==============================
" Pluggins.

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Tema para nvim.
Plugin 'sainnhe/sonokai'
"   Airline.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Nerdtree.
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin para git en vim.
Plugin 'tpope/vim-fugitive'
" Snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" Detección de errores python.
Plugin 'nvie/vim-flake8'
" copilot
Plugin 'github/copilot.vim'
" lineas guia
Plugin 'Yggdroot/indentLine'
" Bufferline
Plugin 'bling/vim-bufferline'
" Iconos para nerdtree.
Plugin 'ryanoasis/vim-devicons'
" Plugin para resaltar cambios en el codigo.
Plugin 'airblade/vim-gitgutter'

call vundle#end()

" ======================================================================
" Configuración de NERDTree
let loaded_nerdtree = 1
let NERDTreeAutoCenter = 1
let NERDTreeNaturalSort = 1
let NERDTreeIgnore = ['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$', '\~$'] " Archivos a ignorar
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1
let NERDTreeShowLineNumbers = 1
let NERDTreeWinPos = 'right'
let NerdTreeShowDevIcons = 1
" ======================================================================
" Configuración de bufferline
let g:bufferline_echo = 1
let g:bufferline_modified = '✥'
let g:bufferline_show_bufnr = 1
" ======================================================================
" Configuración de Indent Guides
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_color_term = 239  " Color de las líneas guía en terminales
let g:indentLine_color_gui = '#7EABE5'  " Color de las líneas guía en GUI
let g:indentLine_showFirstIndentLevel = 1  " Mostrar línea guía en el primer nivel de sangría

" ======================================================================
" Airline config.
let g:airline_theme='deus'
" let g:airline_theme='molokai'
" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Solución a SnipMate-deprecate
let g:snipMate = { 'snippet_version' : 1 }

" ======================================================================
" Auto completado de parentecis etc...
inoremap ( ()<Esc>i
inoremap { {}<Esc>i
inoremap {<CR> {<CR>}<Esc>0
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
" ======================================================================

" Configuración default.

set t_Co=256
syntax enable " Habilitar resaltado de sintaxys.
set title " Nopmbre del archivo en la ventana de la terminal.
set number relativenumber " Indices normales y relativos.
set mouse=a " Integración del mouse.
set cursorline " Resalta la linea actual.
set cursorcolumn " Resalta la columna actual.
set colorcolumn=72 " Muestra la columna limite a 80.
" Indentación.
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab " Insertar espacios en vez de tab's.
set hidden " Permite cambiar de buffers sin tener que guardarlos.
set ignorecase " Ignora mayusculas al hacer una busqueda.
set smartcase " No ignora mayusculas si la palabra contiene mayusculas.
set spelllang=en,es " Corregir palabras usando dic's en inglés y español.
set termguicolors " Activar true colors en la terminal.
set incsearch " Busqueda incremental.
set ignorecase " Ignora mayusculas al hacer una busqueda.
set smartcase " No ignora mayusculas si la palabra contiene mayusculas.
set showmatch " Muestra el parentesis que cierra.
set showcmd " Muestra el comando que se esta escribiendo.
set hlsearch " Resalta la busqueda.
set history=1000 " Historial de comandos.
set wildmenu " Autocompletado en el menu.
set wildmode=list:longest " Autocompletado en el menu.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx " Archivos a ignorar en el autocompletado.
colorscheme sonokai " Tema.

" ======================================================================

" Mapping.

let g:mapleader = ' '  " Definir espacio como la tecla líder

nnoremap <leader>s :w<CR>  " Guardar con <líder> + s
nnoremap <leader>S :wq<CR>  " Guardar  y cerrar con <líder> + S
nnoremap <leader>Q :q!<CR>  " Cerrar descartando cambios con <líder> + Q
nnoremap <leader>c :q<CR>  " Cerrar con <líder> + C

nnoremap <leader>e :e $MYVIMRC<CR>  " Abrir el archivo init.vim con <líder> + e

" Usar <líder> + y para copiar al portapapeles
vnoremap <leader>y "+y
nnoremap <leader>y "+y

" Usar <líder> + d para cortar al portapapeles
vnoremap <leader>d "+d
nnoremap <leader>d "+d

" Usar <líder> + p para pegar desde el portapapeles
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P

" Moverse al buffer siguiente con <líder> + l
nnoremap <leader>l :bnext<CR>

" Moverse al buffer anterior con <líder> + j
nnoremap <leader>j :bprevious<CR>

" Cerrar el buffer actual con <líder> + q
nnoremap <leader>q :bdelete<CR>

" Abrir NERDTree con <líder> + n
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>nc :NERDTreeClose<CR>
