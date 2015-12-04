"FROM HERE THIS IS NEOBUNDLE SETTINS
se nocompatible
filetype off


 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

NeoBundleLazy 'nosami/Omnisharp', {
\   'autoload': {'filetypes': ['cs']},
\   'build': {
\     'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
\     'mac': 'xbuild server/OmniSharp.sln',
\     'unix': 'xbuild server/OmniSharp.sln',
\   }
\ }
NeoBundle 'https://github.com/Shougo/unite.vim'
"NeoBundle 'https://github.com/Shougo/neocomplcache'
NeoBundle 'https://github.com/Shougo/neocomplete'
NeoBundle 'https://github.com/Shougo/neosnippet'
NeoBundle 'https://github.com/Shougo/neosnippet-snippets'
NeoBundle 'https://github.com/thinca/vim-quickrun'
NeoBundle 'https://github.com/thinca/vim-ref'
NeoBundle 'https://github.com/tpope/vim-surround'
NeoBundle 'https://github.com/tpope/vim-fugitive'
NeoBundle 'https://github.com/kana/vim-smartinput'
NeoBundle 'https://github.com/Shougo/vimfiler.vim'
NeoBundle 'https://github.com/vim-scripts/Align'
NeoBundle 'https://github.com/vim-scripts/yanktmp.vim'
NeoBundle 'https://github.com/itchyny/lightline.vim'
NeoBundle 'https://github.com/altercation/solarized'
NeoBundle 'https://github.com/t9md/vim-quickhl'
NeoBundle 'https://github.com/vim-scripts/YankRing.vim'
NeoBundle 'https://github.com/scrooloose/syntastic'
NeoBundle 'https://github.com/OrangeT/vim-csharp'
NeoBundle 'https://github.com/syrntms/unite-tag'
NeoBundle 'https://github.com/tpope/vim-dispatch'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'skwp/greplace.vim'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'arecarn/crunch'
NeoBundle 'tpope/vim-speeddating'
NeoBundle 'vim-scripts/PDV--phpDocumentor-for-Vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'kana/vim-metarw'
"TO HERE THIS IS NEOBUNDLE SETTINGS

"FROM HERE THIS IS NEOCOMPLETE SETTINGS

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
endfunction
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.cs = '.*[^=\);]'
"TO HERE THIS IS NEOCOMPLETE SETTINGS

"FROM HERE THIS IS VIMFILER SETTINGS
let g:vimfiler_as_default_explorer = 1
"TO HERE THIS IS VIMFILERSETTINGS

"FROM HERE THIS IS SYNTASTICS SETTINGS
let g:syntastic_always_populate_loc_list=1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
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
" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/neosnippet-snippets/neosnippets/'

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

let g:ref_phpmanual_path = $HOME . '/.vim/doc/'
let g:ref_source_webdict_sites.default = 'wiki'
let g:ref_open = "vsplit"
"TO HERE THIS IS VIMREF SETTINGS
"FROM HERE THIS IS UNITE VIM SETTINGS
let g:unite_source_file_mru_limit = 500
let g:unite_enable_start_insert = 1
"TO HERE THIS IS UNITE VIM SETTINGS

"FROM HERE THIS IS TAGBAR SETTINGS
let g:tagbar_left = 1
"TO HERE THIS IS TAGBAR SETTINGS

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
nnoremap ,v :@"<CR>

"RELOARD SOURCE
nnoremap ,s :source $MYVIMRC<CR>

function! g:E(error)
    redir >> ~/vimerror
    echo string(a:error)
    redir END
endfunction

"FROM HERE THIS IS REMAPKEYS SETTINGS
nnoremap <C-h>   : vert help<Space>
nnoremap <Nul>rw : Ref webdict wiki<Space>
nnoremap <Nul>rj : Ref webdict je<Space>
nnoremap <Nul>re : Ref webdict ej<Space>
nnoremap <Nul>f  : VimFiler<CR>
nnoremap <Nul>ru : Unite file_mru<CR>
nnoremap <Nul>gd : Gdiff 
nnoremap <Nul>gb : Gblame<CR>
nnoremap <Nul>a  : Align<Space>
vnoremap <Nul>a  : Align<Space>
nnoremap <Nul>rd :execute 'Ref phpmanual ' . expand('<cword>') <CR>
nnoremap <Nul>tb :TagbarToggle<CR> <C-w>w
inoremap <Nul>z, <C-y>,
nnoremap <Nul>calc :CrunchLine<CR>
nnoremap <Nul>x :QuickRun<CR>


autocmd FileType php inoremap <Nul>bd <ESC>:call PhpDocSingle()<CR>
autocmd FileType php nnoremap <Nul>bd :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <Nul>bd :call PhpDocRange()<CR>
"TO HERE THIS IS REMAPKEYS SETTINGS


syntax on
hi Comment ctermfg=6
set number
set smartcase
"set expandtab
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
set bomb
colorscheme solarized
let g:solarized_termtrans=1
set t_Co=256
"



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

"unite tag janp setting
autocmd BufEnter *
\    if empty(&buftype)
\|   nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -horizontal -immediately -multi-line tag<CR>
\|   endif
let g:unite_source_tag_max_fname_length=1023
let g:unite_source_tag_max_name_length=0
let g:unite_source_tag_max_candidate_length=4095


source ~/.vimrc_encode
map <C-e><C-e> :e ++enc=euc-jp<CR>

"REPOSITORY SETTING
let g:repo_type = 'venus'
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
\   'venus' : {
\       'ctags' : {
\           'target'    : '*.cs',
\           'exe'       : '!/usr/local/bin/ctags',
\           'code_root' : $HOME . '/UnityProject/34-venus-unity/Venus/Assets',
\           'out_path'  : $HOME . '/.tags/venus.tag',
\           'in_path'   : $HOME . '/.tags/venus.tag',
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

