" j3rmbadger NeoVim init.vim / .vimrc
" ============================================================ 
" General / Environment / NeovimConfig
" ============================================================ 
" Set Shell
set shell=/usr/bin/zsh
set nowrap            " don't wrap long lines
set wildmenu          " visual autocomplete for command menu
set autowrite         " save file before switching a buffer
set autoread          " when file was changed
set smartcase         " while /The would find only 'The' etc.
set nopaste           " enable formatting while pasting
set pastetoggle=<F2>  " switch paste mode
set clipboard=unnamed " yank to and paste the selection without prepending "*
set autoindent        " indent
set showmatch         " highlight matching brackets

" Explicitly set python provider
let g:python_host_prog  = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

" Sets how many lines of history VIM has to remember
set history=500

" line numbers
set number            " show
set numberwidth=5     " line numbers width

" make it obvious where 120 characters is
set textwidth=120
set colorcolumn=+1
set formatoptions+=w " for wrapping long lines without broken words

" spaces
set tabstop=2     " tab width
set shiftwidth=2  " indent size
set softtabstop=2 " simulated tab width
set expandtab     " spaces on tab press
set smartindent   " indent automatically
set shiftround    " uses shiftwidth when >, <

hi LineNr ctermfg=240 guifg=#585858
autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" Insert Timestamp using F2
nnoremap <F2> a<C-R>=strftime("%c")<CR><Esc
" get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" neovim terminal by Alt + d
nnoremap ∂ :belowright vsplit \| edit term://zsh \| set hidden<CR>
" highlight trailing whitespaces
autocmd InsertLeave * hi ExtraWhitespace ctermbg=172 guifg=#d78700
autocmd InsertEnter * hi ExtraWhitespace NONE

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
" Show incomplete command in status bar
set showcmd

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
 
" run FZF by using Alt + P
nnoremap π "_:FZF<CR>

" search with CtrlSF
nnoremap <C-f> "_:CtrlSF 
let g:ctrlsf_case_sensitive = 'no'
let g:ctrlsf_position = 'bottom'
let g:ctrlsf_ignore_dir = ['node_modules']
if executable('ag')
  let g:ctrlsf_ackprg = 'ag' " use The Silver Searcher https://github.com/ggreer/the_silver_searcher
endif

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd ctermbg=234
hi IndentGuidesEven ctermbg=235

" autocomplete
let g:deoplete#enable_ignore_case = 0
let g:deoplete#enable_smart_case = 0
let g:deoplete#delimiters = ['/', '.', '::', ':', '#']
let g:deoplete#max_list = 5
let g:deoplete#auto_complete_delay = 0
let g:deoplete#auto_refresh_delay = 0
let g:neocomplete#min_pattern_length = 2

" <TAB>: completion
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" status line
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_crypt = 0
let g:airline_section_y = ''
let g:airline_section_warning = ''

" multiple cursors
let g:multi_cursor_start_key='<C-n>'
let g:multi_cursor_start_word_key='g<C-n>'

" markdown preview
let g:instant_markdown_slow = 1

" call MRU plugin with Alt + r
nnoremap ® :MRU<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=40
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" open nerdtree
map <leader><leader> :NERDTreeToggle<CR>
" open current file's path
map <leader>c :NERDTreeFind<CR>
" quit nerdtree on file open
" let NERDTreeQuitOnOpen = 1
" autodelete closed buffer
let NERDTreeAutoDeleteBuffer = 1
" prettify nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" Quit vim if nerdtree is remaining buffer open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" git gutter
nmap <Leader>j <Plug>GitGutterNextHunk
nmap <Leader>k <Plug>GitGutterPrevHunk
nmap <Leader>u <Plug>GitGutterUndoHunk
nmap <Leader>a <Plug>GitGutterStageHunk
nmap <Leader>d <Plug>GitGutterPreviewHunk

" MatchTagAlways
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
highlight MatchTag ctermbg=240 guifg=#585858
let g:mta_filetypes = {'html' : 1, 'javascript.jsx': 1}

" Javascript
let g:syntastic_javascript_checkers = ['eslint']

" undo history
nmap <Leader>h :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1

" jump to defenition with fireplace
nnoremap <C-[><C-[> [<C-d>

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

set smartcase " When searching try to be smart about cases 
" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable 

" Color Options
set termguicolors
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab
" Be smart when using tabs ;)
set smarttab
" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers 
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" ============================================================ 
" => Status line
" ============================================================ 
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

" Snippet Helpers
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ============================================================
" Vim-Go Helpers
" ============================================================
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
let g:go_fmt_command = "goimports"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
"let g:go_metalinter_enabled = ['golint', 'errcheck']
"let g:go_metalinter_autosave = 1
"let g:go_metalinter_autosave_enabled = ['vet', 'golint']
"let g:go_metalinter_deadline = "5s"
"let g:go_list_type = "quickfix"

" ============================================================ 
" Vim-Plug Section
" ============================================================ 
" Let the Plugins begin! - Specify a plugin directory
call plug#begin('~/.config/nvim/plugged')
" visual 
Plug 'chriskempson/base16-vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0ng/vim-hybrid'                                  " theme
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'fatih/molokai'
" text editing
Plug 'tpope/vim-surround'                               " better brackets
Plug 'scrooloose/syntastic'                             " check syntax
Plug 'tpope/vim-commentary'                             " comments
Plug 'tpope/vim-repeat'                                 " repeat more commands with '.'
Plug 'terryma/vim-multiple-cursors'                     " multiple cursors like in ST
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Raimondi/delimitMate'                             " closing brackets
Plug 'terryma/vim-expand-region'                        " change visual selection by using '+' / '-'
Plug 'mbbill/undotree'                                  " undo history tree
Plug 'nathanaelkane/vim-indent-guides'                  " indent columns
Plug 'chrisbra/csv.vim'                                 " csv helper
Plug 'SirVer/ultisnips'                                 " snippets
Plug 'honza/vim-snippets'                             " snippet engine
"Plug 'Shougo/neosnippet.vim'
" navigation
Plug 'scrooloose/nerdtree'                              " file tree
Plug 'dyng/ctrlsf.vim'                                  " better text search
Plug 'kopischke/vim-fetch'                              " open file with line and column number
Plug 'yegappan/mru'                                     " most recently used files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" files
Plug 'tpope/vim-eunuch'                                 " helpers for UNIX shell commands (mkdir, rename, etc.)
" git
Plug 'tpope/vim-fugitive'                               " git commands
Plug 'airblade/vim-gitgutter'                           " git gutter
" js / jsx / html
Plug 'valloric/MatchTagAlways', { 'for': ['html', 'javascript.jsx'] } " highlight match tags
" syntax / languages
" Plug 'suan/vim-instant-markdown', { 'for': 'markdown' } " real time markdown editing
Plug 'metakirby5/codi.vim'
Plug 'suan/vim-instant-markdown'
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'sheerun/vim-polyglot'
Plug 'mileszs/ack.vim'
call plug#end()

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai
