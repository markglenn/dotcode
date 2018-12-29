set number         " Show line number
set showcmd        " Show the command you are typing in the bottom right corner
set hidden         " Allow buffers to exist without a window
syntax on          " Turn on syntax highlighting

" Copy yanks to the system clipboard
set clipboard+=unnamedplus

" ================ Indentation ===============

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Set tab completion propery
set wildmode=longest,list,full
set wildmenu

" Set backup directory
set dir=/private/tmp,/tmp
set backupcopy=yes

" I mistype these all the time
command! W w
command! Q q
command! Qa qa
command! QA qa

colorscheme solarized
set background=dark

" Remove the scrollbar
set guioptions-=r
set guioptions-=L

" Set font
set guifont=Monaco\ for\ Powerline:h13

" Search options
set incsearch
set hlsearch

" Always show the status line
set laststatus=2

" Whitespace highlighting
silent! nnoremap <silent> <Leader>$ :set list!<CR>
silent! nnoremap <silent> <Leader>h :noh<return>

" Pretty UTF8 characters
set listchars=tab:▸\ ,eol:¬
set showbreak=…

if has('mouse_sgr')
  set mouse=a
  set ttymouse=sgr
elseif has('mouse')
  set mouse=a
endif

set completeopt=longest,menu