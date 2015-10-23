" Pathogen
execute pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on
set autoindent
set smartindent
set ignorecase
set number

" Indentation
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab



" Solarized theme
set background=dark
colorscheme elflord

" Syntastic (Syntax checker)
let g:syntastic_aggregate_errors = 1
let g:syntastic_enable_signs=1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_check_on_wq = 0

" Ctrlp
let g:ctrlp_custom_ignore = '\v[\/](.git|.hg|.svn|node_modules|bower_components|dist|phonegap|vagrant)$'

" Emmet
autocmd FileType html,css,scss,xml imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Display extra whitespace
nmap <leader>l :set list!<CR>
set listchars=tab:»\ ,trail:·,eol:¬

" Firefox like tab navigation
map      <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

cabbrev nt NERDTree
let g:NERDTreeChDirMode=2

map t :Tabularize /=<CR>
map T :Tabularize /=><CR>

" Disable cursor keys
let g:cursor_remap_message = 'Use hjkl instead of cursor keys'

inoremap   <Up>     <ESC>:echo g:cursor_remap_message<CR>
inoremap   <Down>   <ESC>:echo g:cursor_remap_message<CR>
inoremap   <Left>   <ESC>:echo g:cursor_remap_message<CR>
inoremap   <Right>  <ESC>:echo g:cursor_remap_message<CR>

noremap   <Up>     :echo g:cursor_remap_message<CR>
noremap   <Down>   :echo g:cursor_remap_message<CR>
noremap   <Left>   :echo g:cursor_remap_message<CR>
noremap   <Right>  :echo g:cursor_remap_message<CR>

" easymotion
map <Leader> <Plug>(easymotion-prefix)

map w <Plug>(easymotion-w)
map b <Plug>(easymotion-b)
map e <Plug>(easymotion-e)
map W <Plug>(easymotion-W)
map B <Plug>(easymotion-B)

" Lightline
set laststatus=2

" vimgrep
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

