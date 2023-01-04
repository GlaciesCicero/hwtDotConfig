
let mapleader=" "
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
" 如遇Unicode值大于255的文本，不必等到空格再折行。
set sidescroll=1
set clipboard=unnamed

" 合并两行中文时，不在中间加空格：
set formatoptions+=B
set formatoptions+=mM
set guifontwide=Fixedsys:h12



syntax on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
set scrolloff=5


set number
set relativenumber

set list
set listchars=tab:▸\ ,trail:▫
set backspace=indent,eol,start
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

set showcmd
set wildmenu
"set wildmode=longest:list,fulion

set hlsearch
exec "nohlsearch"
set showmatch
set incsearch
set ignorecase
set smartcase
set linebreak
set nowrap
au FileType text,tex,latex,markdown,html,xml set wrap


" 折行时，以单词为界，以免切断单词
set linebreak
" 折行后的后续行，使用与第一行相同的缩进
set breakindent


set undofile
set backup
set noswapfile
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo//

set autochdir
set noerrorbells
set novisualbell
set history=1000
set autoread


" noremap是不会递归的映射；inoremap只在insert模式生效；vnoremap只在visual模式生效；nnoremap只在normal模式生效
noremap E ge
noremap s <nop>
" map S :w<CR>
noremap <LEADER>w :w<CR>
noremap <LEADER>q :q<CR>
noremap E $
noremap B 0

map <LEADER>RN :set relativenumber<CR>
map <LEADER>RRN :set norelativenumber<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:split<CR>
" map sl :set splitright<CR>:split<CR>
map sl :vsp<CR> <C-w>l
map sh :vsp<CR> <C-w>h

map <LEADER>l <C-w>l
map <LEADER>k <C-w>k
map <LEADER>j <C-w>j
map <LEADER>h <C-w>h


" multiWindows
" map <C-n> :tabe<CR>
" map <Tab>1 :-tabnext<CR>
" map <Tab>2 :+tabnext<CR>

" ==================== Tab management ====================
" Create a new tab with tu
noremap tu :tabe<CR>
noremap tU :tab split<CR>
" Move around tabs with tn and ti
noremap tn :-tabnext<CR>
noremap ti :+tabnext<CR>
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>
noremap <c-n> :tabe<CR>:-tabmove<CR>:term lazynpm<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>

noremap J 5j
noremap K 5k
noremap L 5l
noremap H 5h
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>
noremap B 5b
noremap W 5w
inoremap <TAB> <c-n>




" ===
" ===Moving cursor
" ===
noremap [a k
noremap [s 2k
noremap [d 3k
noremap [f 4k
noremap [g 5k
noremap [h 6k
noremap [j 7k
noremap [k 8k
noremap [l 9k
noremap [a; 10k
noremap [aa 11k
noremap [as 12k
noremap [ad 13k
noremap [af 14k
noremap [ag 15k
noremap [ah 16k
noremap [aj 17k
noremap [ak 18k
noremap [al 19k
noremap [s; 20k
noremap [sa 21k
noremap [ss 22k
noremap [sd 23k
noremap [sf 24k
noremap [sg 25k
noremap [sh 26k
noremap [sj 27k
noremap [sk 28k
noremap [sl 29k
noremap [d; 30k
noremap [da 31k
noremap [ds 32k
noremap [dd 33k
noremap [df 34k
noremap [dg 35k
noremap [dh 36k
noremap [dj 37k
noremap [dk 38k
noremap [dl 39k
noremap [f; 40k
noremap [fa 41k
noremap [fs 42k
noremap [fd 43k
noremap [ff 44k
noremap [fg 45k
noremap [fh 46k
noremap [fj 47k
noremap [fk 48k
noremap [fl 49k
noremap [g; 50k
noremap [ga 51k
noremap [gs 52k
noremap [gd 53k
noremap [gf 54k
noremap [gg 55k
noremap [gh 56k
noremap [gj 57k
noremap [gk 58k
noremap [gl 59k

noremap 'a j
noremap 's 2j
noremap 'd 3j
noremap 'f 4j
noremap 'g 5j
noremap 'h 6j
noremap 'j 7j
noremap 'k 8j
noremap 'l 9j
noremap 'a; 10j
noremap 'aa 11j
noremap 'as 12j
noremap 'ad 13j
noremap 'af 14j
noremap 'ag 15j
noremap 'ah 16j
noremap 'aj 17j
noremap 'ak 18j
noremap 'al 19j
noremap 's; 20j
noremap 'sa 21j
noremap 'ss 22j
noremap 'sd 23j
noremap 'sf 24j
noremap 'sg 25j
noremap 'sh 26j
noremap 'sj 27j
noremap 'sk 28j
noremap 'sl 29j
noremap 'd; 30j
noremap 'da 31j
noremap 'ds 32j
noremap 'dd 33j
noremap 'df 34j
noremap 'dg 35j
noremap 'dh 36j
noremap 'dj 37j
noremap 'dk 38j
noremap 'dl 39j
noremap 'f; 40j
noremap 'fa 41j
noremap 'fs 42j
noremap 'fd 43j
noremap 'ff 44j
noremap 'fg 45j
noremap 'fh 46j
noremap 'fj 47j
noremap 'fk 48j
noremap 'fl 49j
noremap 'g; 50j
noremap 'ga 51j
noremap 'gs 52j
noremap 'gd 53j
noremap 'gf 54j
noremap 'gg 55j
noremap 'gh 56j
noremap 'gj 57j
noremap 'gk 58j
noremap 'gl 59j


autocmd Filetype markdown,tex,latex noremap <buffer> j gj
autocmd Filetype markdown,tex,latex noremap <buffer> k gk
autocmd Filetype markdown,tex,latex noremap <buffer> gj j
autocmd Filetype markdown,tex,latex noremap <buffer> gk k

noremap <right> :tabn<CR>
noremap <left> :tabp<CR>
" map <up> :res -5<CR>
" map <down> :res +5<CR>
" map <left> :vertical resize+5<CR>
" map <right> :vertical resize-5<CR>
