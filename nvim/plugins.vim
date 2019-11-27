" ============================================================================ "
" ===                          🧩  PLUGINS 🧩                                === "
" ============================================================================ "

" check whether vim-plug is installed and install it if necessary
let plugpath = expand('<sfile>:p:h'). '/autoload/plug.vim'
if !filereadable(plugpath)
    if executable('curl')
        let plugurl = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
        call system('curl -fLo ' . shellescape(plugpath) . ' --create-dirs ' . plugurl)
        if v:shell_error
            echom "Error downloading vim-plug. Please install it manually.\n"
            exit
        endif
    else
        echom "vim-plug not installed. Please install it manually or install curl.\n"
        exit
    endif
endif

call plug#begin('~/.config/nvim/plugged')

" === Editing Plugins === "
" Trailing whitespace highlighting & automatic fixing
Plug 'ntpeters/vim-better-whitespace'

" Easily toggle comments
Plug 'tpope/vim-commentary'

" auto-close plugin
Plug 'rstacruz/vim-closer'

" Improved motion in Vim
Plug 'easymotion/vim-easymotion'

" Intellisense Engine
" Plug 'neoclide/coc.nvim', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}

" Tmux/Neovim movement integration
Plug 'christoomey/vim-tmux-navigator'

" Denite - Fuzzy finding, buffer management
Plug 'Shougo/denite.nvim'

" Snippet support
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Print function signatures in echo area
Plug 'Shougo/echodoc.vim'

" Vim Surrounds
Plug 'tpope/vim-surround'

" === Git Plugins === "
" Enable git changes to be shown in sign column
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'

" ReactJS JSX syntax highlighting
Plug 'maxmellon/vim-jsx-pretty'

" JSDoc
Plug 'heavenshell/vim-jsdoc'

" Improved Javascript Highlighting
Plug 'pangloss/vim-javascript'

" Generate JSDoc commands based on function signature
Plug 'heavenshell/vim-jsdoc'

" Syntax highlighting for styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" === Syntax Highlighting === "

" Improved syntax highlighting and indentation
Plug 'othree/yajs.vim'

" === UI === "
" File explorer
Plug 'scrooloose/nerdtree'

" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'mhartington/oceanic-next'
Plug 'xero/blaquemagick.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'jaredgorski/SpaceCamp'
Plug 'ntk148v/vim-horizon'
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim/'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim'

" Icons
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Insert brackets
Plug 'jiangmiao/auto-pairs'

" Goyo distraction free writing
Plug 'junegunn/goyo.vim'

" ======= RUST ======= "
Plug 'rust-lang/rust.vim'

" Initialize plugin system
call plug#end()
