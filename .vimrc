set tabstop=2
set shiftwidth=2
set softtabstop=0

set hlsearch
syntax on
filetype plugin indent on
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L] 
set laststatus=2

" NeoBundle setting
if has('vim_starting')
   set nocompatible
       if !isdirectory(expand("~/.vim/bundle/neobundle.vim/"))
    	       echo "install neobundle..."
           call system("git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim")
       endif
   set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'nanotech/jellybeans.vim'

" for python
NeoBundle 'Flake8-vim'
NeoBundle 'davidhalter/jedi-vim' 
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic' 

" for general programming
NeoBundle 'git://github.com/tyru/caw.vim.git'
NeoBundle 't9md/vim-quickhl'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/unite.vim' "unite
NeoBundle 'vim-latex/vim-latex'

NeoBundleCheck
call neobundle#end()

" PyFlake setting
let g:PyFlaeOnWrite = 1
let g:PyFlakeCheckers = 'pep8, mccabe, pyflakes'
let g:PyFlakeDefaultComplexity = 10

" neocomplete setting
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#skip_auto_completion_time = ""

" syntastic setting
let g:syntastic_python_checkers = ['pyflakes', 'pep8']

" general mapping
imap <C-[> <esc>

" quickhl setting
nmap <Space>m <Plug>(quickhl-manual-this)
xmap <Space>m <Plug>(quickhl-manual-this)
nmap <Space>M <Plug>(quickhl-manual-reset)
nmap <Space>M <Plug>(quickhl-manual-reset)

" neosnippet setting
imap <expr><Tab> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
let g:neosnippet#snippets_directory = "~/.neosnippet"

" unite setting
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit =200

" gtag setting
map <C-g> :Gtags
map <C-h> :Gtags -f %<CR>
map <C-f> :GtagsCursor<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

" jedi setting
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_select_first = 0

" vim-latex setting
filetype plugin on
filetype indent on
set shellslash
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Imap_UsePlaceHolders = 1
let g:Imap_DeleteEmptyPlaceHolders = 1
let g:Imap_StickyPlaceHolders = 0
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_FormatDependency_pdf = 'dvi,pdf'
let g:Tex_FormatDependency_ps = 'dvi,ps'
let g:Tex_CompileRule_ps = 'dvips -Ppdf -o $*.ps $*.dvi'
let g:Tex_CompileRule_dvi = 'platex -synctex=1 -interaction=nonstopmode -file-line-error $*'
let g:Tex_CompileRule_pdf = 'ptex2pdf -l -ot "-synctex=1 -interaction=nonstopmode -file-line-error-style" $*'
let g:Tex_BibtexFlavor = 'pbibtex'
let g:Tex_MakeIndexFlavor = 'upmendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1
let g:Tex_ViewRule_pdf = 'xdg-open'

let g:Tex_IgnoreLevel = 9
let g:Tex_IgnoredWarnings = 
			\"Underfull\n".
			\"Overfull\n".
			\"specifier changed to\n".
			\"You have requested\n".
			\"Missing number, treated as zero.\n".
			\"There were undefined references\n".
			\"Citation %.%# undefined\n".
			\"LaTeX Font Warning: Font shape `%s' undefined\n".
			\"LaTeX Font Warning: Some font shapes were not available, defaults substituted."

filetype plugin indent on
syntax on
colorscheme jellybeans
set t_Co=256
set number
set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
