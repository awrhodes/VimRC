"colorscheme molokai
"colo seoul256
set background=dark
set wildmenu "vim's built in auto complete
set showmatch "show matching parenthesis
set incsearch " search as characters are entered
set hlsearch " highlight search matches
set cursorline
hi Normal ctermbg=none		"transparency
highlight NonText ctermbg=none	"trasnparency
set nu			"line numbers
set clipboard=unnamed
set nocompatible	"required 
filetype off		"required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jnurmine/Zenburn'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ervandw/supertab'
Plugin 'junegunn/seoul256.vim'
"Plugin 'dodie/vim-disapprove-deep-indentation'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'davidhalter/jedi'

" Plugins must be added before the following line
call vundle#end() 		"required

"Color Scheme
colo seoul256

"Autocomplete
let g:jedi#use_tabs_not_buffers=1

"LookOfDisapproval Stuff 
let g:LookOfDisapprovalTabTreshold=5
let g:LookOfDisapprovalTSpaceTreshold=(&tabstop*5)

"SuperTab stuff
let g:SuperTabDefaultCompletionType = "<c-n>"

filetype plugin indent on 	"required

" Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable Folding
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

" Proper PEP8 indentation
au BufRead,BufNewFile *.py, *.pyc, *.c, *.h
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=4
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

" Proper indentation for JS, HTML, and CSS
au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
	\ set softtabstop=2
	\ set shiftwidth=2

" Flagging extra whitespace
au BufRead,BufNewFile *.py, *.pyw, *.c, *.h, match BadWhitespace /\s\+$/

" UTF8 support
set encoding=utf-8

" Python syntax highlighting
let python_highlight_all=1
syntax on
