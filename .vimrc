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
NeoBundle 'https://github.com/Shougo/neosnippet-snippets'
NeoBundle 'https://github.com/thinca/vim-quickrun'
NeoBundle 'https://github.com/thinca/vim-ref'
NeoBundle 'https://github.com/tpope/vim-surround'
NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/kana/vim-smartinput'
NeoBundle 'https://github.com/Shougo/vimfiler.vim'
NeoBundle 'https://github.com/alanstevens/Align'
NeoBundle 'https://github.com/vim-scripts/yanktmp.vim'
NeoBundle 'https://github.com/itchyny/lightline.vim'
NeoBundle 'https://github.com/altercation/solarized'
NeoBundle 'https://github.com/t9md/vim-quickhl'
NeoBundle 'https://github.com/vim-scripts/YankRing.vim'
NeoBundle 'https://github.com/scrooloose/syntastic'
NeoBundle 'https://github.com/osyo-manga/vim-over'
NeoBundle 'https://github.com/OrangeT/vim-csharp'
NeoBundle 'https://github.com/thinca/vim-threes'
NeoBundle 'joonty/vdebug'
NeoBundle 'https://github.com/syrntms/unite-tag'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'skwp/greplace.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'arecarn/crunch'
NeoBundle 'tpope/vim-speeddating'
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

"FROM VIM OVER SETTINGS
let g:over_enable_cmd_window = 1
"TO VIM OVER SETTINGS

"FROM HERE THIS IS VIMFILER SETTINGS
let g:vimfiler_as_default_explorer = 1
"TO HERE THIS IS VIMFILERSETTINGS

"FROM HERE THIS IS SYNTASTICS SETTINGS
let g:syntastic_always_populate_loc_list=1
"TO HERE THIS IS SYNTASTICS SETTINGS

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
"TO HERE THIS IS VIMREF SETTINGS
"FROM HERE THIS IS UNITE VIM SETTINGS
let g:unite_source_file_mru_limit = 500
let g:unite_enable_start_insert = 1
"TO HERE THIS IS UNITE VIM SETTINGS

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
nnoremap ,k <C-w>-<CR>
nnoremap ,j <C-w>+<CR>
nnoremap ,l <C-w><<CR>


"FROM HERE THIS IS REMAPKEYS SETTINGS
nnoremap <C-h>   : vert help<Space>
nnoremap <Nul>rw : Ref webdict wiki<Space>
nnoremap <Nul>rj : Ref webdict je<Space>
nnoremap <Nul>re : Ref webdict ej<Space>
nnoremap <Nul>f  : VimFiler<CR>
nnoremap <Nul>x  : QuickRun<CR>
nnoremap <Nul>ru : Unite file_mru<CR>
nnoremap <Nul>gd : Gdiff 
nnoremap <Nul>gb : Gblame<CR>
nnoremap <Nul>a  : Align<Space>
vnoremap <Nul>a  : Align<Space>
nnoremap <Nul>rd :execute 'Ref phpmanual ' . expand('<cword>') <CR>
nnoremap <Nul>tl :Tlist <CR> <C-w>w
inoremap <Nul>z, <C-y>,
cnoremap %s/ OverCommandLine<CR>%s/
"TO HERE THIS IS REMAPKEYS SETTINGS


syntax on
hi Comment ctermfg=6
set number
set smartcase
set expandtab
set ic
set softtabstop=4
set tabstop=4
set shiftwidth=4
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileencoding=utf-8
set hls
set foldmethod=marker
set background=dark
set laststatus=2
set ambiwidth=double
set linespace=30
colorscheme solarized
let g:solarized_termtrans=1
set t_Co=256



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

"FROM LIGHTLINE
let g:lightline = {
    \ 'colorscheme': 'solarized',
\ }
"TO LIGHTLINE

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

autocmd BufEnter *
\    if empty(&buftype)
\|   nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -horizontal -immediately -multi-line tag<CR>
\|   endif
let g:unite_source_tag_strict_truncate_string=0
let g:unite_source_tag_max_fname_length=1023
let g:unite_source_tag_max_name_length=0
let g:unite_source_tag_max_candidate_length=4095


source ~/.vimrc_encode
map <C-e><C-e> :e ++enc=euc-jp<CR>

let g:repo_type = 'knight'
let g:repo_settings = {
\   'knight' : {
\       'ctags' : {
\           'target'    : '',
\           'exe'       : '',
\           'code_root' : '',
\           'out_path'  : '',
\           'in_path'   : $HOME . '/.tags/gree_default_tags,'
\               . $HOME . '/.tags/gree_tags,'
\               . $HOME . '/.tags/tags,'
\       },
\   },
\   'ayc' : {
\       'ctags' : {
\           'target'    : '*.cs',
\           'exe'       : '!/usr/local/bin/ctags',
\           'code_root' : $HOME . '/attackyourcastle/Assets',
\           'out_path'  : $HOME . '/.tags/ayc.tag',
\           'in_path'   : $HOME . '/.tags/ayc.tag',
\       },
\   },
\}

function! UpdateTags()
    let b:stg = g:repo_settings[g:repo_type]
    if b:stg.ctags.exe==#''
        return
    endif
    execute b:stg.ctags.exe
\       . " -f " . b:stg.ctags.out_path
\       . " -R " . b:stg.ctags.code_root
    echo b:stg.ctags.code_root
    echo b:stg.ctags.out_path
endfunction

execute "autocmd BufWritePre " . repo_settings[repo_type].ctags.target . " call UpdateTags()"
execute "set tags=" . repo_settings[repo_type].ctags.in_path
