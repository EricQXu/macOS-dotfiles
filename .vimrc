set number
syntax on

" Remap <Esc>w to move one word forward
noremap <Esc>w <S-Right>
vnoremap <Esc>w <S-Right>
inoremap <Esc>w <S-Right>

" Remap <Esc>b to move one word backward
noremap <Esc>b <S-Left>
vnoremap <Esc>b <S-Left>
inoremap <Esc>b <S-Left>

" Remap <S-BS> to delete the previous word
" noremap <S-BS> <C-W>
" vnoremap <S-BS> <C-W>
inoremap <S-BS> <C-W>

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
" set expandtab

" Set tab characters to display as green
highlight SpecialKey ctermfg=green guifg=green
" Show tab characters
set list
set listchars=tab:>-
