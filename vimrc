" Commands to start: cd ~, mkdir .vim, cd .vim, touch vimrc, git init .
" ln -s ~/.vim/.vimrc ~/.vimrc

" install Pathogen:
" mkdir -p ~/.vim/autoload ~/.vim/bundle && \
" curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
" loading plugins with Pathogen
" To add plugin
" cd ~/.vim
" git submodule add gi@pluginname.git bundle/pluginname

" Conflicts between ale and syntastics
let g:ale_emit_conflict_warnings = 0

execute pathogen#infect()
filetype plugin on

" Enable filetype plugins
filetype indent on
filetype on

" color

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
    endif

syntax enable
let g:molokai_original = 1
colorscheme molokai
" highlight Normal ctermbg=none
" highlight NonText ctermbg=none

" :W sudo saves the file
" " (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" fonts
" add fonts to "usr/local/share/fonts
set guifont=Menlo\ Regular:h18

" lines
set colorcolumn=80
set number

" enable features
set hidden
" set history
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set showmatch

" disable arrows
noremap <Up> <Up>
noremap <Down> <Down>
noremap <Left> <Left>
noremap <Right> <Right>

" Solve backspace issue
set backspace=indent,eol,start

" remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" search: highlight found words
set hlsearch

" leader key
" Default: let mapleader="\"

" Personal shortcuts
map <leader>pt :put =strftime(\"%c\") <CR><Esc>
map <leader>ww :w <CR><Esc>
map <leader>wq :wq <CR><Esc>

" Reload vim config without having to restart Editor
map <leader>s :source ~/.vimrc<CR>

" ubuntu
set encoding=utf-8
set fileencoding=utf-8

" lightline
set laststatus=2

" nerdcommenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" nerdtree
map <C-n> :NERDTreeToggle<CR>

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim

" python
au BufNewFile,BufRead python
    \ setlocal tabstop=4 |
    \ setlocal softtabstop=4 |
    \ setlocal shiftwidth=4 |
    \ setlocal textwidth=79 |
    \ setlocal expandtab |
    \ setlocal autoindent |
    \ setlocal fileformat=unix

" js hmtl css ts
au BufNewFile,BufRead *.js, *.html, *.css, *.ts
    \ setlocal tabstop=2 |
    \| setlocal softtabstop=2 |
    \| setlocal shiftwidth=2

" text and tex files
autocmd BufRead,BufNewFile  *.txt setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile  *.tex setlocal spell spelllang=en_us
