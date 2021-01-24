" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Undo/Redo
nnoremap U <C-R>

" Copy/Paste
vnoremap x d
vnoremap c y
vnoremap v p

" Edit selection (cut then enter insert mode)
vnoremap e p

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? \<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better line navigation
nnoremap s <Left>
vnoremap s <Left>

nnoremap d <Right>
vnoremap d <Right>

nnoremap k <Up>
vnoremap k <Up>

nnoremap j <Down>
vnoremap j <Down>

" begininig of line
nnoremap w 0
vnoremap w 0
" end of line
nnoremap W <End>
vnoremap W <End>
" word backwards
nnoremap a b
vnoremap a b
" word forward
nnoremap f w
vnoremap f w
" begining of file 
nnoremap o gg
vnoremap o gg
" end of file
nnoremap O <C-End>
vnoremap O <C-End>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"