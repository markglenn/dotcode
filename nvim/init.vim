call plug#begin('~/.local/share/nvim/plugged')

	Plug 'scrooloose/nerdtree'
	Plug 'kien/ctrlp.vim'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-rails'
	Plug 'tpope/vim-haml'
	Plug 'othree/html5.vim'
	Plug 'scrooloose/syntastic'
	Plug 'jlanzarotta/bufexplorer'
	Plug 'ervandew/supertab'

	Plug 'altercation/vim-colors-solarized'

call plug#end()

execute 'source' '~/.config/nvim/settings.vim'

" NERDTree configurations
silent! nnoremap <silent> <Leader>p :NERDTreeToggle<CR>
silent! nnoremap <silent> <Leader>f :NERDTreeFind<CR>

if has("autocmd")
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | wincmd p | ene | exe 'NERDTree' argv()[0] | endif
	autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
endif

let NERDTreeIgnore = ['\.pyc$', '^tags$', '__pycache__', '\.zeus\.sock$']

"key mapping for window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Jump to tag
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

" Load tags from current or any parent path
set tags=tags;/