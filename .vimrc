set nocompatible
set shell=C:/bin/bash.exe
source $VIMRUNTIME/mswin.vim
behave mswin

colorscheme murphy
syntax on

set ruler
set number
set incsearch
set hlsearch
set nobackup
set nowritebackup
set textwidth=120
set tabstop=4
set shiftwidth=4
set ff=dos
set expandtab
set numberwidth=4

set list listchars=tab:>-,trail:·
set colorcolumn=+1,+2,+3
set backspace=indent,eol,start

nmap <Space> i<Space><Esc>

nnoremap <A-a> <C-a>
nnoremap <A-x> <C-x>

augroup filetypedetect
au BufNewFile,BufRead *.vb setf vb
augroup END

au FileType SQL set noexpandtab
au FileType SQL set tw=0

au FileType XML set noexpandtab
au FileType XML set tw=0

