call pathogen#infect()

" Can't live without syntax hilighting
if has("syntax")
    syntax on
    let python_highlight_all=1
end

" Set a bunch of stuff to let me code how I darn well please
set number
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ruler
set showcmd
set showmatch
set matchpairs+=<:>

" Don't care about legacy settings
set nocompatible

" Fix backspace in cygwin
set backspace=2
set backspace=indent,eol,start

" Alter theme. Pray I do not alter it further
set background=dark
set t_Co=256

" Set title string and push it to xterm/screen window title
set titlestring=vim\ %<%F%(\ %)%m%h%w%=%l/%L-%P 
set titlelen=70
if &term == "screen" || &term == "tmux"
  set t_ts=k
  set t_fs=\
endif
if &term == "screen" || &term == "tmux" || &term == "xterm"
  set title
endif

" Set tabs to 2 spaces for puppet
au BufRead,BufNewFile *.rb,*.erb,*.pp set sw=2 ts=2 sts=2 expandtab

" Allow mouse control
set mouse=a
set selectmode=mouse

if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype on
  filetype plugin indent on
endif

autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePost *.py call Flake8()
