" *****************************************************************************
"  File         : .vimrc
"  Author       : Calvin Cheung
"  Created      : 2019-04-22     
"  Updated      : 2019-09-20

"  Useful Sources:
"  https://dougblack.io/words/a-good-vimrc.html
"  https://github.com/VundleVim/Vundle.vim
"  https://www.youtube.com/watch?v=JVpxDuxe1eY (Setting up .vimrc and Vundle)
" *****************************************************************************


" -----------------------------------------------------------------------------
" Vundle:
" -----------------------------------------------------------------------------
set nocompatible
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'arcticicestudio/nord-vim'
" Plugin 'vim-airline/vim-airline'
" Plugin 'vim-airline/vim-airline-themes'

" All Plugins must be added before the following line
call vundle#end()

" auto indent for each filetype and for filetype specific plugins
filetype plugin indent on

" -----------------------------------------------------------------------------
" Vim Appearance:
" -----------------------------------------------------------------------------
set t_Co=256            " using WSLtty, enables 256 colors in vim
set background=dark     " configs Vim to use brighter colors

colorscheme nord     

syntax on               " enables syntax highlighting
set number              " shows line number
set showcmd             " shows the command at the bottom
set cmdheight=1         " sets cmd window height to 2 lines

set ruler               " show line & column number of the curser on status line

set cursorline          " enables the cursor line

" will only highlight the line number
highlight clear CursorLine

" -----------------------------------------------------------------------------
" Basic Behaviours:
" -----------------------------------------------------------------------------
set autoread            " autoreload if file was changed outside of Vim
set mouse=a             " enable mouse support (doesn't work well on Mac Terminal)
set wildmenu            " visual autocompete for command menu
set lazyredraw          " redraw only when need to
set showmatch           " highlight matching parenthesis characters [{()}]
set statusline=2        " always show statusline (even with only a single window)

set visualbell          " blinks cursor upon error instead of beeping
set t_vb=               " if above is set, will neither flash nor beep 

set nostartofline       " stops certain movements from going to first character of line
set confirm             " instead of failing a command, asks to save  

" -----------------------------------------------------------------------------
" Tab Settings:
" -----------------------------------------------------------------------------
set tabstop=4           " sets tab length
set shiftwidth=4        " sets num of spaces in tab
set expandtab           " turns tabs into spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " apparently even better autoindent (adds indent after '{')

" -----------------------------------------------------------------------------
" Search Settings:
" -----------------------------------------------------------------------------
set incsearch           " search as character are entered
set hlsearch            " highlights search matches
set ignorecase          " uses case sensitive search
set smartcase           " except when using capital letters

" -----------------------------------------------------------------------------
" Plugin Configs:
" -----------------------------------------------------------------------------
" Lightline:
set laststatus=2
let g:lightline = {
    \ 'colorscheme': 'nord',
    \ }

" Airline:
" let g:airline_theme='nord'
" let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1

" -----------------------------------------------------------------------------
" Keymaps:
" -----------------------------------------------------------------------------
map <C-n> :NERDTreeToggle<CR>  

