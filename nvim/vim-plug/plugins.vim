" auto-install vim-plug
if empty(glob('~/dotfiles/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/dotfiles/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/dotfiles/nvim/autoload/plugged')
    " Lightline status bar
    Plug 'itchyny/lightline.vim'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "JSON with comments for vim
    Plug 'kevinoid/vim-jsonc'
    " Coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Vim-which-key
    Plug 'liuchengxu/vim-which-key'
    " NerdTree
     Plug 'preservim/nerdtree'
    " Cool vim icons
    Plug 'ryanoasis/vim-devicons'

    "GIT
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

    "NerdCommenter
    Plug 'preservim/nerdcommenter'
    " Vertical line displaying
    Plug 'Yggdroot/indentLine'
    " THEMES
    Plug 'joshdick/onedark.vim'

call plug#end()
