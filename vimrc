"                         (_)
"  _ __ ___  _   _  __   ___ _ __ ___  _ __ ___
" | '_ ` _ \| | | | \ \ / / | '_ ` _ \| '__/ __|
" | | | | | | |_| |  \ V /| | | | | | | | | (__
" |_| |_| |_|\__, |   \_/ |_|_| |_| |_|_|  \___|
"             __/ |
"            |___/


" Check system os
if has('win32')
	let home_path = $HOME . '/Appdata/Local/nvim/'
elseif(has('unix'))
	if has('nvim')
		let home_path = $HOME . '/.config/nvim/'
	else
		let home_path = $HOME . '/.vim'
	endif
endif

" ┌──────────────┐
" │ Plug manager │
" └──────────────┘

" set plugin dir
let s:plugged_path = $HOME . '/.vim/plugged'
call plug#begin(s:plugged_path)

" Colorschemes
Plug 'edugomez102/vim-code-dark'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/rakr/vim-one'

Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'

Plug 'chrisbra/Colorizer'
Plug 'nvim-treesitter/nvim-treesitter/'

Plug 'https://github.com/edugomez102/vim-z80'
Plug 'https://github.com/rr-/vim-hexdec', {'commit': 'a4c59850610ece0129f6496e677877cee8a6d065'}
Plug 'https://github.com/voldikss/vim-floaterm'
let g:floaterm_wintype = 'split'
let floaterm_position = 'botright'
let floaterm_height = 0.3

" Syntax highlighting various languages
Plug 'sheerun/vim-polyglot'

" Appearence
	" Status line
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

Plug 'mhinz/vim-startify'
let g:startify_session_dir = $HOME . '/.vim/sessions'
let g:startify_bookmarks = [ {'v': home_path . 'vimrc'} ]
let g:startify_fortune_use_unicode = 1

let g:header_string = [
\'😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎',
\'😎   ┌─┐┌┬┐┬─┐┌─┐  ┌┬┐┬┌─┐  ┌┬┐┌─┐┌─┐  ┌┬┐┌─┐┬  ┌─┐┌┐┌┌┬┐┌─┐  ┌┬┐┌─┐  ┬ ┬┌┐┌┌─┐  ┌─┐┌─┐┌┐┌┌┬┐┌─┐┬  ┬  ┌─┐   😎',
\'😎   │ │ │ ├┬┘│ │   │││├─┤  │││├─┤└─┐   ││├┤ │  ├─┤│││ │ ├┤    ││├┤   │ ││││├─┤  ├─┘├─┤│││ │ ├─┤│  │  ├─┤   😎',
\'😎   └─┘ ┴ ┴└─└─┘  ─┴┘┴┴ ┴  ┴ ┴┴ ┴└─┘  ─┴┘└─┘┴─┘┴ ┴┘└┘ ┴ └─┘  ─┴┘└─┘  └─┘┘└┘┴ ┴  ┴  ┴ ┴┘└┘ ┴ ┴ ┴┴─┘┴─┘┴ ┴   😎',
\'😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎😎',
\'',
\ ]
let g:startify_custom_header =
			\ 'startify#center(g:header_string)'

let g:startify_commands = [
			\ {'g': ':G | only'},
			\ ]

			" \ { 'header': ['   MRU'],            'type': 'files' },
let g:startify_lists = [
			\ { 'header': ['   Sessions'],       'type': 'sessions' },
			\ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
			\ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
			\ { 'header': ['   Commands'],      'type': 'commands' }
			\ ]

" Snippets
Plug 'SirVer/ultisnips'
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_javascript = {
			\ 'keyword-spacing': 'always',
			\ 'semi': 'never',
			\ 'space-before-function-paren': 'always',
			\ }

" Toggle comment
Plug 'tomtom/tcomment_vim'
	" map to gc
xnoremap <C-\> gc

" Unix commands
Plug 'tpope/vim-eunuch'

Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'akho/numbers.vim'
let g:numbers_exclude = ['nerdtree', 'vista', 'clap']
let g:numbers_exclude_buftypes = [ 'acwrite',  'nofile', 'quickfix', 'terminal' ]

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'fannheyward/telescope-coc.nvim'

Plug 'nvim-pack/nvim-spectre'

" Popup menu
Plug 'liuchengxu/vim-clap', { 'tag': 'v0.20' }
let g:clap_layout = { 'relative': 'editor', 'width': '80%', 'col' : '4%' , 'row' : '10%', 'height': '50%'}
let g:clap_on_move_delay = 1
let g:clap_session_dir = '~/.vim/sessions'
hi default link ClapProjTagPattern Normal
Plug 'hokorobi/vim-clap-sessions'
let g:clap_provider_dotfiles = {
      \ 'source': ['~/.vim/vimrc', '~/.bashrc', '~/.zshrc'],
      \ 'sink': 'e',
      \ }

" Autocompletition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" GoTo code navigation.
nmap <silent> gd :Telescope coc definitions<cr>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gI <Plug>(coc-implementation)
nmap <silent> gr :Telescope coc references<cr>

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    call CocAction('doHover')
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
	nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
	inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
	inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
	vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
	vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" File tree
Plug 'liuchengxu/vista.vim'
let g:vista_stay_on_open = 0
let g:vista_default_executive = 'coc'

" Vim textobjects
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

Plug 'dhruvasagar/vim-pairify'
if !exists('g:pairify_map')
	let g:pairify_map = "<s-tab>"
endif
" inoremap <S-tab> <ESC>la

" Version control changes
Plug 'mhinz/vim-signify'
" Undotree
Plug 'mbbill/undotree'

" Auto sessions
Plug 'tpope/vim-obsession'

" File tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
let g:NERDTreeMapOpenExpl = ''
Plug 'ryanoasis/vim-devicons'
let NERDTreeRespectWildIgnore=1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
			\ "Modified"  : "●",
			\ "Staged"    : "✚",
			\ "Untracked" : "*",
			\ "Renamed"   : "➜",
			\ "Unmerged"  : "═",
			\ "Deleted"   : "✖",
			\ "Dirty"     : "✗",
			\ "Clean"     : "✔︎",
			\ 'Ignored'   : '☒',
			\ "Unknown"   : "?"
			\ }
let NERDTreeDirArrowExpandable="\u00a0"
let NERDTreeDirArrowCollapsible="\u00a0"

Plug 'kyazdani42/nvim-web-devicons'

" Visible marks
Plug 'jeetsukumaran/vim-markology'

let g:markology_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
let g:markology_ignore_type="hprqm"

" Improve search
Plug 'osyo-manga/vim-anzu'
if isdirectory(s:plugged_path . "/vim-anzu")
	nmap n <Plug>(anzu-n-with-echo)
	nmap N <Plug>(anzu-N-with-echo)
	nmap * <Plug>(anzu-star-with-echo)
	nmap # <Plug>(anzu-sharp-with-echo)
endif

" Generate ctags files
" Plug 'ludovicchabant/vim-gutentags'
" let g:gutentags_enabled = 0

" Extra functions
Plug 'drmingdrmer/vim-toggle-quickfix'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-repeat'

" Languages

" Debugger
Plug 'puremourning/vimspector'
let g:vimspector_enable_mappings = 'HUMAN'
" packadd! vimspector

" Html imrovements
" Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'adelarsq/vim-matchit'
Plug 'AndrewRadev/tagalong.vim'

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:polyglot_disabled = ['latex']
let g:vimtex_view_general_viewer = 'okular'

" C#
" Plug 'OmniSharp/omnisharp-vim'

" Dart
Plug 'tiagofumo/dart-vim-flutter-layout'

" Some plugin depenencies
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'habamax/vim-godot'

Plug 'tpope/vim-fugitive'
autocmd FileType fugitive nmap do dd<c-w>k
Plug 'rhysd/conflict-marker.vim'

Plug 'cdelledonne/vim-cmake'
let g:cmake_root_markers = ['.']
let g:cmake_default_config = 'build'

Plug 'junegunn/gv.vim'
Plug 'rbong/vim-flog'

Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }

Plug 'AndrewRadev/splitjoin.vim'
Plug 'sickill/vim-pasta'
Plug 'https://github.com/ThePrimeagen/refactoring.nvim'

call plug#end()

function! VimscriptPlugins()
	PlugInstall vim-matchit vim-polyglot lightline.vim vim-gitbranch tcomment_vim vim-eunuch vim-easy-align vim-textobj-line vim-textobj-user vim-pairify vim-obsession nerdtree nerdtree-git-plugin vim-markology vim-anzu auto-pairs vim-surround vim-repeat vim-matchit gruvbox vim-code-dark iceberg.vim
endfunction

command! VimscriptPlugins call VimscriptPlugins()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ┌────────┐
" │ Colors │
" └────────┘
syntax enable
set background=dark
set termguicolors
silent! colorscheme codedark

" ┌────────────┐
" │ Tab config │
" └────────────┘
set smarttab
	" show existing tab with 4 spaces width
set tabstop=4
	" when indenting with '>', use 4 spaces width
set shiftwidth=4
	" On pressing tab, insert 4 spaces
" set expandtab

" ┌───────────┐
" │ UI config │
" └───────────┘
set wildmenu
set wildignorecase
set showcmd
set cursorline
set showmatch 
set title
set so=3

" Wrap Config
" set wrap
set breakindent

" List Config
set list
try
	if has("nvim")
		set listchars=tab:┊\ ,nbsp:␣,trail:⌁,precedes:«,extends:»
	else
		set listchars=tab:┊\ ,space:•,nbsp:␣,trail:⌁,precedes:«,extends:»
	endif
catch
	set list!
endtry
" set listchars+=eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239

" Window separation char
set fillchars+=vert:\▏


" ┌──────────────┐
" │ File options │
" └──────────────┘
filetype plugin indent on
" Cargar archivos al cambiar en disco
set autoread
set updatetime=100
" au CursorHold,CursorHoldI * checktime

" ┌────────────────┐
" │ Search options │
" └────────────────┘
set hlsearch
set incsearch
set ignorecase
set smartcase
" set iskeyword -=_

" ┌──────────────┐
" │ Move options │
" └──────────────┘

" move vertically by visual line
nnoremap j gj
nnoremap k gk
	" jump by visual line
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" ┌──────┐
" │ Misc │
" └──────┘

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Performance options
set lazyredraw

" Split right
set splitright
" set splitbelow

" Buffer options
set hid

" Movida con indentar comments, esto pasaba por el filetype pluginrindent 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"para un solo uso seria con--> :set formatoptions-=cro

" ┌─────────────────────┐
" │ More plugin options │
" └─────────────────────┘
" ┌───────────┐
" │ Markology │
" └───────────┘
if has_key(plugs, "vim-markology")
	hi MarkologyHLl ctermfg=216 cterm=italic
	hi MarkologyHLu ctermfg=216 cterm=italic
	hi MarkologyHLo ctermfg=189 cterm=italic
	hi MarkologyHLm ctermfg=214 cterm=italic
	nmap <silent> mj <Plug>MarkologyNextLocalMarkPos
	nmap <silent> mk <Plug>MarkologyPrevLocalMarkPos
endif

" ┌─────────┐
" │ Signify │
" └─────────┘
if has_key(plugs, "vim-signify")
	highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE
	highlight SignifySignAdd    ctermfg=green  guifg=LightGreen cterm=NONE gui=NONE
	highlight SignifySignDelete ctermfg=89  guifg=#870000 cterm=NONE gui=NONE
	let g:signify_sign_change = '~'
endif

" ┌───────────┐
" │ OmniSharp │
" └───────────┘
if has_key(plugs, "omnisharp-vim")
	let g:omnicomplete_fetch_full_documentation = 1
	augroup omnisharp_commands
		autocmd!
		autocmd CursorHold *.cs OmniSharpTypeLookup
		autocmd FileType cs nnoremap <buffer> <Leader>c :OmniSharpDocumentation<CR>
		autocmd FileType cs nnoremap <buffer> <Leader>x :OmniSharpPreviewDefinition<CR>
		silent! set completeopt=longest,menuone,preview,popuphidden
	augroup END
endif

" ┌───────────┐
" │ Ligthline │
" └───────────┘
set laststatus=2
set noshowmode
set ttimeoutlen=50

let g:lightline = {
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ],
			\				[ 'gitbranch', 'session', 'readonly', 'filename', 'modified' ] ]
			\ },
			\ 'component_function': {
			\   'gitbranch': 'gitbranch#name',
			\   'filename' : 'LightlineFilename'
			\ },
			\ }
" \   'session' : 'LigthlineSessionstatus',

function! LigthlineSessionstatus()
	return ObsessionStatus()
endfunction

function! LightlineFilename()
  let root = fnamemodify(get(b:, 'git_dir'), ':h')
  let path = expand('%:p')
  if path[:len(root)-1] ==# root
    return path[len(root)+1:]
  endif
  return expand('%')
endfunction

" ┌────────┐
" │ Remaps │
" └────────┘

let mapleader = "\<Space>"

	" Close the current buffer
map <leader>bd : bp\|bd #<cr>
map <silent> <leader><cr> :noh<cr>

map <leader>tn :tabedit %<cr>
map <leader>to :tabonly<cr>
" map <leader>tc :tabclose<cr>
map <leader>tq :tabclose<cr>
map <leader>tm :tabmove<cr>

" Remaps propios
map s "_d
nmap ss "_dd
nmap <s-S> "_D

nmap <leader>w :w!<cr>
" nnoremap <leader>j :find ./**/
" nnoremap <leader>s :vimgrep  ./**/*<left><left><left><left><left><left><left>
map Y y$
map Q @:

" Insert Mode
imap <c-e> <Del>
imap jk <Esc>
imap JK <Esc>
vmap JK <Esc>

"toggle quickfix
nmap <F3> <Plug>window:quickfix:loop

map <leader>qa :qall<cr>
" map <leader>p :set paste!<cr>

" Espejar lineas(hay que empezar una linea antes)
map <leader>rv :g/^/m'<<cr> :noh<cr>

" mapear enter a nueva linea menos en el quickfix
nnoremap <expr> <CR> &buftype ==# 'quickfix' ? "\<CR>" : 'o<Esc>'

" borrar linea y pegar
map gp pk"_dd
map <leader>; :FloatermToggle<cr>
map <leader>c; :FloatermToggle<cr> <c-c> clear<cr>

" vimdiff
nmap <leader>gj :diffget //2<cr>
nmap <leader>gk :diffget //3<cr>

" clean quickfix
nmap <leader>cf :cexpr []<cr>

" map <F8> :set foldmethod=syntax<cr>
" map <leader>a :bufdo :args ## %<cr>
" noremap <F3> :!./run.sh<cr>

nnoremap <leader>fs :!feh <cfile> &<cr>

" Plugin mappings
" ***************
map <leader>e :NERDTreeToggle<cr>
map U :UndotreeToggle<cr>

" Vim fugitive
map <leader>gc :Git checkout<space>

map <leader>vv :Vista!!<cr>

" autocmd FileType nerdtree :set norelativenumber
" map <leader>db :WakaTimeToday<cr>
map <leader>qs :ClapMksession<cr>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <leader>cr :CocCommand flutter.dev.hotRestart<cr>
nmap <leader>ch :CocCommand flutter.dev.hotReload<cr>
nmap <leader>cl :CocCommand flutter.dev.openDevLog<cr>

nmap <leader>hh :CocCommand clangd.switchSourceHeader<cr>
function! ToggleTpp()
	if expand('%:e') == "hpp"
		:e %:r.tpp
	elseif expand('%:e') == "tpp"
		:e %:r.hpp
	end
endfunction

nmap <leader>ht :call ToggleTpp()<cr>

" coc marks?
nmap <leader>cd :Telescope coc diagnostics<cr>
" cmake
nmap <leader>cm :CMakeBuild<cr>
nmap <leader>cc :CMakeClose<cr>

" nnoremap <leader>j :MarkologyNextLocalMarkPos<cr>
" nnoremap <leader>k :MarkologyPrevLocalMarkPos<cr>

map <leader>ss :SignifyHunkDiff<cr>

" nmap <leader>c <Plug>window:quickfix:loop

map gs :tab :G<cr>
map gz :Git add %<cr>

map <leader>gd yiw<c-w>h:Gvdiffsplit <c-r>"<cr>  <c-w>l<c-w>q"
map <leader>fv :vert Flogsplit<cr>

" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>di <Plug>VimspectorBalloonEval

nmap <Leader>vc :VimspectorReset<cr>
nmap <Leader>dw :VimspectorWatch <c-r><c-w><cr>

nmap <Leader><F11> <Plug>VimspectorUpFrame
nmap <Leader><F12> <Plug>VimspectorDownFrame

" Clap maps
if isdirectory(s:plugged_path . "/vim-clap")
	nnoremap <c-m> :Telescope buffers<cr>
else
	nnoremap <C-m> :ls<cr>:b<Space>
endif

nnoremap <c-h> :Telescope coc workspace_symbols<cr>
nmap mm :Telescope marks<cr>

" Poner en funcion de si estamos en un repo o no
	" lo devuelve como un string con valor true
let s:inside_git = system('git rev-parse --is-inside-work-tree')
if s:inside_git =~ "true"
	nnoremap <c-j> :Telescope git_files<cr>
else
	nnoremap <c-j> :Telescope find_files<cr>
endif

nnoremap <leader>/ :Telescope current_buffer_fuzzy_find<cr>
nnoremap <c-p> :Telescope coc mru<cr>

nnoremap <c-n> :Clap filer<cr>
" nnoremap <c-k> :Telescope tags<cr>
nnoremap <c-k> :Telescope coc document_symbols <cr>

" nnoremap <c-k> :Clap tags<cr>

nnoremap <leader>y :Telescope registers<cr>

" ┌────────────────────┐
" │ Search and replace │
" └────────────────────┘

	" buscar seleccion en visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
	" remplazar visual mode desde linea actual hasta fin fichero
vnoremap <C-r> "hy:.,$s/<C-r>h//gc<left><left><left>
	" buscar palabra exacta
" nnoremap <leader>/ /\<\><left><left>
	" buscar y seleccionar en bloque
" nnoremap <Space>r :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/
nnoremap <Space>r :.,$s/\<<C-r>=expand('<cword>')<CR>\>/<c-r><c-w>/gc<left><left><left>


" TODO: check
"Movidas con el indent
" map <F7> gg=G<C-o><C-o>
" nnoremap p p=`]
" nnoremap P P=`]

" ┌───────┐
" │ Folds │
" └───────┘
set foldmethod=syntax   
" set foldnestmax=10
set nofoldenable
" set foldlevel=2
hi Folded ctermbg=236 ctermfg=108 cterm=NONE
function! NeatFoldText()
    let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
    let lines_count = v:foldend - v:foldstart + 1
    let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
    let foldchar = matchstr(&fillchars, 'fold:\zs.')
    let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
    let foldtextend = lines_count_text . repeat(foldchar, 8)
    let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
    return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction

set foldtext=NeatFoldText()

" ┌──────────────────┐
" │ Complete options │
" └──────────────────┘
silent! set completeopt+=noselect,menuone,longest,noinsert
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y><cr>" : "\<CR>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" ┌──────────┐
" │ Wildmenu │
" └──────────┘
" Ignore wildmenu
set wildignore=*.o,*~,*.pyc,*.class,.wakatime-project,*.swp
"poner extension archivo compilado
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" ┌───────┐
" │ Sound │
" └───────┘
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ┌──────────────┐
" │ Dictionaries │
" └──────────────┘
set dictionary+=/usr/share/dict/spanish
set dictionary+=/usr/share/dict/american-english

" ┌────────────┐
" │ Spellcheck │
" └────────────┘
" TODO: move
" setlocal spell
" set spelllang=en_gb
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
" inoremap <C-l>l <Esc>u2z=gi
" hi clear SpellBad
" hi SpellBad cterm=underline ctermfg=161
" nmap <f4> :set spell! <bar> set spelllang=es<cr>

" ┌──────────┐
" │ Sessions │
" └──────────┘
set ssop-=options    " do not store global and local values in a session
" set ssop-=folds      " do not store folds

" ┌─────────────────┐
" │ Persistent undo │
" └─────────────────┘
set undodir=~/.vim/undo-dir
set undofile

" ┌──────────────┐
" │ open manuals │
" └──────────────┘
runtime! ftplugin/man.vim

" ┌──────┐
" │ Misc │
" └──────┘

tnoremap jk <c-\><c-n>
if has("win32")
	tnoremap jk <c-\><c-n>
	" echo "win"
	" set shell=powershell.exe
	autocmd TermOpen * startinsert
	" autocmd TermOpen * set nonumber
	" autocmd TermOpen * set norelativenumber
endif

function! ConflictsHighlight() abort
	syn region conflictStart start=/^<<<<<<< .*$/ end=/^\ze\(=======$\||||||||\)/
	syn region conflictMiddle start=/^||||||| .*$/ end=/^\ze=======$/
	syn region conflictEnd start=/^\(=======$\||||||| |\)/ end=/^>>>>>>> .*$/

	highlight conflictStart ctermbg=red ctermfg=black
	highlight conflictMiddle ctermbg=blue ctermfg=black
	highlight conflictEnd ctermbg=green cterm=bold ctermfg=black
endfunction

augroup MyColors
	autocmd!
	autocmd BufEnter * call ConflictsHighlight()
augroup END

let g:conflict_marker_highlight_group = ''
let g:conflict_marker_begin = '^<<<<<<< .*$'
let g:conflict_marker_end   = '^>>>>>>> .*$'

highlight ConflictMarkerBegin guibg=#2f7366 ctermbg=118 ctermfg=0
highlight ConflictMarkerOurs guibg=#2e5049 ctermbg=108 ctermfg=0
highlight ConflictMarkerTheirs guibg=#344f69 ctermbg=110 ctermfg=0
highlight ConflictMarkerEnd guibg=#3f628e ctermbg=117 ctermfg=0
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81

" map s !start chrome /incognito https://www.youtube.com/channel/UCQxjtDgJvfY0aKirYYI42cg?sub_confirmation=1<cr>

lua << EOF
require('telescope').setup {
	defaults = { file_ignore_patterns = {"vendor/"} } }

require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  sync_install = false, -- install languages synchronously (only applied to `ensure_installed`)
  ignore_install = { "javascript" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require('telescope').load_extension('coc')

require('refactoring').setup({
	-- prompt for return type
	prompt_func_return_type = {
		go = true,
	},
	-- prompt for function parameters
	prompt_func_param_type = {
		go = true,
		cpp = true,
		c = true,
		java = true,
	},
})

-- load refactoring Telescope extension
require("telescope").load_extension("refactoring")
vim.api.nvim_set_keymap("v", "<Leader>re", [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]], {noremap = true, silent = true, expr = false})

-- remap to open the Telescope refactoring menu in visual mode
vim.api.nvim_set_keymap(
	"v",
	"<leader>rr",
	"<Esc><cmd>lua require('telescope').extensions.refactoring.refactors()<CR>",
	{ noremap = true }
)

EOF

" TODO: improve
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <cmd>lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>

autocmd BufNewFile,BufRead *.tpp set filetype=cpp
