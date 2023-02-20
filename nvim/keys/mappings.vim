" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" NerdTree
nnoremap <Leader>e :NERDTree

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
"inoremap <expr><TAB> pumvisible() ? "<C-n>" : "<TAB>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <M-Left> <C-w>h
nnoremap <M-Down> <C-w>j
nnoremap <M-Up> <C-w>k
nnoremap <M-Right> <C-w>l

" begininig of line
nnoremap q 0
vnoremap q 0
" end of line
nnoremap Q <End>
vnoremap Q <End>
" jump backwards start of word
nnoremap t b
vnoremap t b
" jump forward start of word
nnoremap w w
vnoremap w w
" begining of file 
nnoremap o gg
vnoremap o gg
" end of file
nnoremap O <C-End>
vnoremap O <C-End>

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da"
