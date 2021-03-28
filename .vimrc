"set nocompatible              " be iMproved, required
"filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


Plugin 'Shougo/neocomplete'
Plugin 'thinca/vim-surround'
Plugin 'kana/vim-smartinput'
Plugin 'vim-scripts/Align'
Plugin 't9md/vim-quickhl'
Plugin 'scrooloose/syntastic'

call vundle#end()            " required
filetype plugin indent on    " required"
syntax enable

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

"FROM HERE THIS IS REMAPKEYS SETTINGS
nnoremap <Nul>a  : Align<Space>
vnoremap <Nul>a  : Align<Space>
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
set bomb
colorscheme solarized
let g:solarized_termtrans=1
set t_Co=256



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
