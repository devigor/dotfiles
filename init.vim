" Start de Plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))

  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

endif

" Plug start
call plug#begin()

" Interface
Plug 'morhetz/gruvbox'
Plug 'ayu-theme/ayu-vim'
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
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml'] }

" Others
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
Plug 'terryma/vim-multiple-cursors'
Plug 'kristijanhusak/vim-carbon-now-sh'
Plug 'mxw/vim-jsx'
Plug 'posva/vim-vue'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {
      \ 'do': 'npm install --frozen-lockfile',
      \ 'for': ['typescript']}
Plug 'neoclide/coc-snippets', {
      \ 'do': 'npm install --frozen-lockfile',
      \ 'for': ['javascript', 'typescript', 'graphql']}
Plug 'neoclide/coc-json', {'do': 'npm install --frozen-lockfile', 'for': 'json'}
Plug 'neoclide/coc-vetur', {'do': 'npm install --frozen-lockfile', 'for': 'vue'}
Plug 'neoclide/coc-html', {'do': 'npm install --frozen-lockfile', 'for': 'html'}
Plug 'neoclide/coc-css', {'do': 'npm install --frozen-lockfile', 'for': ['css', 'scss']}
Plug 'neoclide/coc-yaml', {'do': 'npm install --frozen-lockfile', 'for': 'yaml'}
Plug 'neoclide/coc-eslint', {'do': 'npm install --frozen-lockfile', 'for': 'javascript'}
Plug 'neoclide/coc-prettier', {
      \ 'do': 'npm install --frozen-lockfile',
      \ 'for': ['javascript', 'typescript', 'graphql', 'html', 'json', 'css', 'scss']}
Plug 'neoclide/coc-jest', {
      \ 'do': 'npm install --frozen-lockfile',
      \ 'for': ['javascript', 'typescript']}
Plug 'neoclide/coc-pairs', {'do': 'npm install --frozen-lockfile', 'for': 'javascript'}

call plug#end()
" Plug end


autocmd vimenter * NERDTree
" When open change the focus to the file (and not the NERDTree)
autocmd! VimEnter * NERDTree | wincmd w
" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect


" ALE Conf
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1

" NERDTree interface config
let NERDTreeWinSize = 25
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let NERDTreeShowHidden = 1

let g:airline_powerline_fonts = 1

let g:multi_cursor_start_word_key = '<C-d>'

let g:user_emmet_expandabbr_key='<Tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
let g:user_emmet_settings = {
  \  'javascript' : {
  \      'extends' : 'jsx',
  \  },
  \  'typescript' : {
  \      'extends' : 'jsx',
  \  },
  \}

" FZF Conf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
let g:fzf_layout = { 'down': '~20%' }
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, '--ignore *lock*', <bang>0)
command! -bang -nargs=? -complete=dir Files call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)


let mapleader="\<space>"

noremap <C-n> :NERDTreeToggle<cr>
noremap <C-p> :Files<cr>
noremap <C-t> :tabnew<space>
noremap <C-q> :tabclose<cr>
noremap <C-Up> :tabnext<cr>
noremap <C-Down> :tabprev<cr>

noremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
noremap <leader>sv :source ~/.config/nvim/init.vim<cr>


set encoding=UTF-8
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
