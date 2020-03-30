" Start de Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))

  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif

" Plug start
call plug#begin()

" Interface
Plug 'morhetz/gruvbox'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'

" NERDTree
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', {'on': 'NERDTreeToggle'}

" Languagens
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-css-color', {'for': ['css', 'scss']}
Plug 'jparise/vim-graphql'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install' }
Plug '2072/PHP-Indenting-for-VIm'
Plug 'phpactor/ncm2-phpactor'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}

" Others
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'prettier/vim-prettier'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'dense-analysis/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'jiangmiao/auto-pairs'
Plug 'editorconfig/editorconfig-vim'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
" Plug end


autocmd vimenter * NERDTree
" When open change the focus to the file (and not the NERDTree)
autocmd! VimEnter * NERDTree | wincmd w
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


" NERDTree interface config
let NERDTreeWinSize = 25
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let mapleader="\<space>"

noremap <C-n> :NERDTreeToggle<cr>
noremap <C-p> :Files<cr>
noremap <C-t> :tabnew<space>
noremap <C-q> :tabclose<cr>
noremap <C-Up> :tabnext<cr>
noremap <C-Down> :tabprev<cr>

noremap <leader>md :LivedownPreview<cr>
noremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
noremap <leader>sv :source ~/.config/nvim/init.vim<cr>


let g:NERDTreeDisableFileExtensionHighlight = 1
let g:NERDTreeDisableExactMatchHighlight = 1
let g:NERDTreeDisablePatternMatchHighlight = 1

let g:airline_powerline_fonts = 1

let g:multi_cursor_start_word_key='<C-g>'

let g:user_emmet_leader_key='<C-a>'
let g:user_emmet_expandabbr_key='<Tab>'
let g:deoplete#enable_at_startup = 1
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")



set encoding=UTF-8
set background=dark
colorscheme gruvbox

set hidden
set number
set termguicolors
set title
set mouse=a
set inccommand=split
set clipboard=unnamed
set expandtab
set shiftwidth=2

set completeopt=noinsert,menuone,noselect
