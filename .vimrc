"FROM HERE THIS IS NEOBUNDLE SETTINS 
set nocompatible
filetype off

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundle 'https://github.com/Shougo/vimproc.vim'
NeoBundle 'https://github.com/Shougo/unite.vim'
NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/neosnippet'
NeoBundle 'https://github.com/thinca/vim-quickrun'
NeoBundle 'https://github.com/thinca/vim-ref'
NeoBundle 'https://github.com/mattn/zencoding-vim'
NeoBundle 'https://github.com/mattn/webapi-vim'
NeoBundle 'https://github.com/tpope/vim-surround'
NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/kana/vim-smartinput'
NeoBundle 'https://github.com/kana/vim-smartchr'
NeoBundle 'https://github.com/Shougo/vimfiler.vim'
NeoBundle 'https://github.com/alanstevens/Align'
NeoBundle 'https://github.com/vim-scripts/yanktmp.vim'
NeoBundle 'bling/vim-airline'
NeoBundle 'https://github.com/altercation/solarized'
NeoBundle 'https://github.com/t9md/vim-quickhl'
NeoBundle 'https://github.com/vim-scripts/taglist.vim'
NeoBundle 'https://github.com/vim-scripts/YankRing.vim'
"TO HERE THIS IS NEOBUNDLE SETTINGS

"FROM HERE THIS IS NEOCOMPLCACHE SETTINGS
set completeopt=menuone,preview
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_max_list = 20
let g:neocomplcache_min_syntax_length = 3
"TO HERE THIS IS NEOCOMPLCACHE SETTINGS

"Plugin key-mapping
imap <C-k>  <Plug>(neosnippet_expand_or_jump)
smap <C-k>  <Plug>(neosnippet_expand_or_jump)
xmap <C-k>  <Plug>(neosnippet_expand_target)

" Supertab like snippets behavior
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ?"\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" for snippet_complete marker.
if has('conceal')
    set conceallevel=2 concealcursor=i
endif

"FROM HERE THIS IS VIMREF SETTINGS
let g:ref_source_webdict_sites = {
\   'je': {
\     'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
\   },
\   'ej': {
\     'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
\   },
\   'wiki': {
\     'url': 'http://ja.wikipedia.org/wiki/%s',
\   },
\ }

let g:ref_phpmanual_path = $HOME . '/.vim/doc/php/php-chunked-xhtml/'
let g:ref_source_webdict_sites.default = 'wiki'
let g:ref_open = "vsplit"
nnoremap <Nul>rd :execute 'Ref phpmanual ' . expand('<cword>') <CR>
"TO HERE THIS IS VIMREF SETTINGS
"FROM HERE THIS IS UNITE VIM SETTINGS
let g:unite_enable_start_insert = 1
let g:unite_source_file_mru_limit = 500
"TO HERE THIS IS UNITE VIM SETTINGS


"FROM AIRLINE SETTING
let g:airline_enable_branch = 0
let g:airline_section_b = "%t %M"
let g:airline_section_c = ''
let s:sep = " %{get(g:, 'airline_right_alt_sep', '')} "
let g:airline_section_x =
    \ "%{strlen(&fileformat)?&fileformat:''}".s:sep.
    \ "%{strlen(&fenc)?&fenc:&enc}".s:sep.
    \ "%{strlen(&filetype)?&filetype:'no ft'}"
let g:airline_section_y = '%3p%%'
let g:airline_section_z = get(g:, 'airline_linecolumn_prefix', '').'%3l:%-2v'
let g:airline#extensions#whitespace#enabled = 0
let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_theme='solarized'
"TO AIRLINE SETTING

command! RL :source $MYVIMRC
nnoremap <Space>. :edit $MYVIMRC<CR>
nnoremap <ESC><ESC> :nohl<CR>
set cindent


"TOGGLE LINE NUMBER
nnoremap ,n :<C-u>call ToggleNum()<CR>
function! ToggleNum()
if &number ==# '1'
set nonumber
else
set number
endif
endfunction

"CHANGE SIZE
nnoremap ,h <C-w>><CR>
nnoremap ,j <C-w>-<CR>
nnoremap ,k <C-w>+<CR>
nnoremap ,l <C-w><<CR>


"FROM HERE THIS IS REMAPKEYS SETTINGS
nnoremap <C-h>   : help<Space>
nnoremap <Nul>rw : Ref webdict wiki<Space>
nnoremap <Nul>rj : Ref webdict je<Space>
nnoremap <Nul>re : Ref webdict ej<Space>
nnoremap <Nul>f  : VimFiler<Space>
nnoremap <Nul>x  : QuickRun<Space>
nnoremap <Nul>ru : Unite file_mru<Space>
nnoremap <Nul>gd : Gdiff<Space>
nnoremap <Nul>gb : Gblame<Space>
nnoremap <Nul>gc : Gcommit<Space>
nnoremap <Nul>a  : Align<Space>
vnoremap <Nul>a  : Align<Space>

"ZENCODIN
inoremap <Nul>z, <C-y>,
"TO HERE THIS IS REMAPKEYS SETTINGS


syntax on
hi Comment ctermfg=6
set number
set smartcase
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileencoding=utf-8
set hls
set tags=$HOME/.tags/tags
set foldmethod=marker
set background=dark
set laststatus=2
set ambiwidth=double
set linespace=30
colorscheme solarized
let g:solarized_termtrans=1



" for quickrun.vim
let g:quickrun_config = {
\   'objc': {
\     'command': 'cc',
\     'exec': ['%c %s -o %s:p:r -framework Foundation', '%s:p:r %a', 'rm -f %s:p:r'],
\     'tempfile': '{tempname()}.m',
\   }
\ }

"行末ハイライト
augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

function! SetTplFolding()
    set foldmethod=marker
    set foldmarker=<<<,>>>
endfunction


autocmd BufReadPre *.tpl call SetTplFolding()

"From ShowMarks
let g:showmarks_hlline_lower=1
"let g:showmarks_hlline_uppder=1
"let g:showmarks_hlline_other=1
"To ShowMarks


"FROM HERE YANKTMP PLUGIN SETTINGS
map <silent> sy :call YanktmpYank()<CR>
map <silent> sp :call YanktmpPaste_p()<CR>
map <silent> sP :call YanktmpPaste_P()<CR>
"TO HERE YANKTMP PLUGZIN SETTING

"FROM HERE QUICKHL PLUGIN SETTINGS
let g:quickhl_manual_colors = [
        \ "gui=bold ctermfg=7   ctermbg=1   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=2   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=3   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=4   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=5   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=6   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=1   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=2   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=3   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=4   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=5   guibg=#ffffff guifg=#ffffff",
        \ "gui=bold ctermfg=7   ctermbg=6   guibg=#ffffff guifg=#ffffff",
        \ ]
nmap <Space>hl <Plug>(quickhl-manual-this)
xmap <Space>hl <Plug>(quickhl-manual-this)
nmap <Space>hr <Plug>(quickhl-manual-reset)
xmap <Space>hr <Plug>(quickhl-manual-reset)
nmap <Space>hc <Plug>(quickhl-cword-toggle)
nmap <Space>ht <Plug>(quickhl-tag-toggle)
"TO HERE QUICKHL PLUGZIN SETTING

"FROM HERE TAGLIST PLUGIN SETTINGS
nnoremap <Nul>tl :Tlist <CR>
"TO HERE TAGLIST PLUGZIN SETTING
source ~/.vimrc_encode
map <C-e><C-e> :e ++enc=euc-jp<CR>
