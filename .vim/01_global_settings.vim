" General Settings:

" We use UTF8 by default
scriptencoding utf-8

" Use the whole true color space
set termguicolors

" Enable filetype-specific indenting and plugins
filetype plugin indent on

" Enable syntax
syntax on

" Put our temp files in /tmp
set directory=/tmp/

" Do not create backup files when saving over existing files
set nobackup

" A little paranoid, but disable the writebackup function as well
set nowritebackup

" No swap files when editing please
set noswapfile

" No visual bell
set vb t_vb=

" Set to auto read when a file is changed from the outside
set autoread                            

" Also match angle brackets
set matchpairs+=<:>       


" Undo Configuration:

" Enable undo file
set undofile
" Set undodir to tmp directory
let &undodir=&directory

" Tags:

" Show extra information when using tags in insert mode
set showfulltag

" Completion:

" Ignore case on insert completion
set infercase

set completeopt=menuone,preview

" When more than one match, list all matches and complete first match.
set wildmode=list:full    

" Mouse:

set mousehide                           " Hide mouse pointer on insert mode.
set mouse=a

" Text:

set whichwrap=h,l,~,[,]                 " Wrap with more keys
set nowrap                              " Disable line wrapping

" use indents of 2 spaces, and have them copied down lines:
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
" Round indent by a multiple of shiftwidth in indent mode
set shiftround

set number                              " Enable line numbers
set numberwidth=3                       " Set line number column width

" WindowAndBufferManagement:

set splitbelow                          " Open new horizontal split windows below current
set splitright                          " Open new vertical split windows to the right

" Search:
" show the `best match so far' as search strings are typed:
set incsearch
" Don't highlight search result.
set nohlsearch
" Searches wrap around the end of the file
set wrapscan

" assume the /g flag on :s substitutions to replace all matches in a line:
set gdefault

" Formatting:
set fo-=o " Do not automatically insert the current comment leader after hitting 'o' or 'O' in Normal mode.
set fo-=r " Do not automatically insert a comment leader after an enter
set fo-=t " Do no auto-wrap text using textwidth (does not apply to comments)

" Buffers become hidden when unloaded
set hidden

" Show line wraps with fancy action
set showbreak=↪

" Help Program: Use vim help instead of language specific for shift-k
set keywordprg=:help

" Always show status bar
set laststatus=2

" Make backspace work over indents, eol, and at start of line
set backspace=indent,eol,start


" set shorter timeout so 
set timeoutlen=1000 ttimeoutlen=0

" print path of current file to the status line 
" after write command
set statusline+=%F
