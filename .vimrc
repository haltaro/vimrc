set shiftwidth=2
set softtabstop=0

set hlsearch
syntax on
set number
imap <C-[> <esc>

"--------------------------
" Start of NeoBundle setting

if has('vim_starting')
	set 
	if !isdirectory(expand('~/.vim/bundle/neobundle.vim/'))
		echo 'install neobundle...'
		call system('git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim')
	endif
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
let g:neobundle_default_git_protocol='https'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'vim-latex/vim-latex'

NeoBundleCheck
call neobundle#end()

" End of NeoBundle setting
"--------------------------

"--------------------------
" Start of vim-latex setting

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
let g:Tex_CompileRule_dvi = 'uplatex -synctex=1 -interaction=nonstopmode -file-line-error-style $*'
let g:Tex_BibtexFlavor = 'upbibtex'
let g:Tex_MakeIndexFlavor = 'upmendex $*.idx'
let g:Tex_UseEditorSettingInDVIViewer = 1
let g:Tex_ViewRule_pdf = '/usr/bin/open -a Preview.app'

" Ignore setting.
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
  \'LaTeX Font Warning: Some font shapes were not available, defaults substituted.'

" End of vim-latex setting
"--------------------------

"--------------------------
" Start of vim-airline setting
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_theme = 'light'
" End of vim-airline setting
"--------------------------

filetype indent on
filetype plugin indent on
set t_Co=256
set encoding=utf-8
set fileformats=unix,dos,mac
set tabstop=4
