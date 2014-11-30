set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'git://github.com/gmarik/Vundle.vim'
Plugin 'git://github.com/vim-scripts/winmanager'
Plugin 'git://github.com/vim-scripts/DoxygenToolkit.vim'
Plugin 'git://github.com/Valloric/YouCompleteMe'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/vim-scripts/Doxygen-Syntax'
Plugin 'git://github.com/altercation/vim-colors-solarized'
Plugin 'git://github.com/tpope/vim-fugitive'
Plugin 'git://github.com/vim-scripts/L9'
Plugin 'git://github.com/vim-scripts/cmdalias.vim'
Plugin 'git://github.com/vim-scripts/genutils'
Plugin 'git://github.com/vim-scripts/greputils'
Plugin 'git://github.com/vim-scripts/multvals.vim'
Plugin 'git://github.com/vim-scripts/taglist.vim'
Plugin 'git://github.com/flazz/vim-colorschemes.git'
Plugin 'git://github.com/rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://github.com/gentoo/gentoo-syntax.git'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'
" Plugin 'winmanager'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


"encoding,fileencodings,fileencoding -- enc,fencs,fenc
set encoding=utf-8
set fencs=utf-8,gb18030,gbk,gb2312,chinese,shift-jis,ucs-bom,cp936,big5,cp936,euc-jp,euc-kr,latin1
"set fenc=utf-8
"newline format
set ffs=unix,dos,mac
"language
set langmenu=en_US.UTF-8

syntax enable
syntax on

set cursorcolumn
set cursorline
set list lcs=tab:\┊\ 
"set ambiwidth=double

" highlight search
set hls
" set nohls
"set nu
set number
"colorscheme github
"colorscheme spring
"colorscheme torte
"colorscheme darkblue
set background=dark
colorscheme solarized
"mouse enabled in buffers
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"highlight matching patterns when search
set showmatch

"indent
set tabstop=8
set softtabstop=8
set shiftwidth=2
set expandtab
set autoindent
set smarttab 
set cindent
if &term=="xterm"
  set t_Co=8
  set t_Sb=^[[4%dm
  set t_Sf=^[[3%dm
endif

"Set mapleader,for default "\"
let mapleader = ","


"taglist
let Tlist_Show_One_File=0   "show tags of multiple files
let Tlist_File_Fold_Auto_Close=1 "if not the current file, fold functions 
let Tlist_Exit_OnlyWindow=1 "when taglist is the last window, then quit vim
let Tlist_Use_SingleClick=1 "single click to jump
let Tlist_GainFocus_On_ToggleOpen=1 "acquire input focus when open taglist
let Tlist_Process_File_Always=1 "always analyze tag even taglist is not open
nmap <F8> :Tlist <cr>

"WinManager plugin
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
map <silent> <F9> :WMToggle<cr>

"cscope
set cscopequickfix=s-,c-,d-,i-,t-,e-,g- 
set cst
set csto=0
cs add /home/think/document/project/cscope.out /home/think/document/project
"Find this C symbol
nmap<C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
"Find this definition
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"Find functions calling this function
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"Find assignments to
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"Find this egrep pattern
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"Find this file
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"Find files #including this file
nmap <C-_>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
"Find functions called by this function
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"grep
nnoremap <silent> <F3> :Grep<CR>
"compile
map <F6> :make<CR>
"auto completion
filetype plugin indent on   "filetype detecting
set completeopt=longest,menu "disable the preview window when autocomplete

"superTAB 
let g:SuperTabRetainCompletionType=2

let g:SuperTabDefaultCompletionType="<C-X><C-O>"

"tags
if exists("tags")
  set tags=./tags
endif
"default shell
set shell=zsh
"history
set history=1000

"read file if it is modified outside
if exists("&autoread")
  set autoread
endif


"incremental search pattern
set incsearch
"ignorecase in search
"set ignorecase
"ignorecase if captial letters  
"set smartcase

"slient
set noerrorbells
set novisualbell
set t_vb=

"no backp
"set nobackup
"set nowb

"status bar
set showcmd
set backspace=indent,eol,start

"show line number and column number
set ruler 

"youcompleteme
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1

let g:miniBufExplMapWindowNavVim = 1

"DoxygenToolkit
let g:DoxygenToolkit_authorName = "guozhou"
let g:DoxygenToolkit_authorTag = "@author "
let g:DoxygenToolkit_blockFooter = "----------------------------------------------------------------------------"
let g:DoxygenToolkit_blockHeader = "--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockTag = "@brief "
let g:DoxygenToolkit_briefTag_pre = "@brief "
let g:DoxygenToolkit_briefTag_post = "(-.-)"
let g:DoxygenToolkit_briefTag_funcName = "yes"
let g:DoxygenToolkit_briefTag_className = "yes"
let g:DoxygenToolkit_briefTag_enumName = "yes"
let g:DoxygenToolkit_briefTag_namespaceName = "yes"
let g:DoxygenToolkit_briefTag_structName = "yes"
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_commentType = "JavaDoc"
let g:DoxygenToolkit_cinoptions = "JavaDoc"

let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_returnTag = "@returns   "
let g:DoxygenToolkit_licenseTag = " <one line to give the program's name and a brief idea of what it does.>\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "Copyright (C) <year>  <name of author>\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "This program is free software: you can redistribute it and/or modify\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "it under the terms of the GNU General Public License as published by\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "the Free Software Foundation, either version 3 of the License, or\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "(at your option) any later version.\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "This program is distributed in the hope that it will be useful,\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "but WITHOUT ANY WARRANTY; without even the implied warranty of\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "GNU General Public License for more details.\<enter>\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "You should have received a copy of the GNU General Public License\<enter>"
let g:DoxygenToolkit_licenseTag = g:DoxygenToolkit_licenseTag . "along with this program.  If not, see <http://www.gnu.org/licenses/>.\<enter>"

"" from DoxygenToolki.vim
if !exists("g:DoxygenToolkit_briefTag_pre")
  let g:DoxygenToolkit_briefTag_pre = "@brief "
endif
if !exists("g:DoxygenToolkit_briefTag_post")
  let g:DoxygenToolkit_briefTag_post = ""
endif
if !exists("g:DoxygenToolkit_templateParamTag_pre")
  let g:DoxygenToolkit_templateParamTag_pre = "@tparam "
endif
if !exists("g:DoxygenToolkit_templateParamTag_post")
  let g:DoxygenToolkit_templateParamTag_post = ""
endif
if !exists("g:DoxygenToolkit_paramTag_pre")
  let g:DoxygenToolkit_paramTag_pre = "@param "
endif
if !exists("g:DoxygenToolkit_paramTag_post")
  let g:DoxygenToolkit_paramTag_post = ""
endif
if !exists("g:DoxygenToolkit_returnTag")
  let g:DoxygenToolkit_returnTag = "@return "
endif
if !exists("g:DoxygenToolkit_throwTag_pre")
  let g:DoxygenToolkit_throwTag_pre = "@throw " " @exception is also valid
endif
if !exists("g:DoxygenToolkit_throwTag_post")
  let g:DoxygenToolkit_throwTag_post = ""
endif
if !exists("g:DoxygenToolkit_blockHeader")
  let g:DoxygenToolkit_blockHeader = ""
endif
if !exists("g:DoxygenToolkit_blockFooter")
  let g:DoxygenToolkit_blockFooter = ""
endif
if !exists("g:DoxygenToolkit_licenseTag")
  let g:DoxygenToolkit_licenseTag = s:licenseTag
endif
if !exists("g:DoxygenToolkit_fileTag")
  let g:DoxygenToolkit_fileTag = "@file "
endif
if !exists("g:DoxygenToolkit_authorTag")
  let g:DoxygenToolkit_authorTag = "@author "
endif
if !exists("g:DoxygenToolkit_dateTag")
  let g:DoxygenToolkit_dateTag = "@date "
endif
if !exists("g:DoxygenToolkit_versionTag")
  let g:DoxygenToolkit_versionTag = "@version "
endif
if !exists("g:DoxygenToolkit_undocTag")
  let g:DoxygenToolkit_undocTag = "DOX_SKIP_BLOCK"
endif
if !exists("g:DoxygenToolkit_blockTag")
  let g:DoxygenToolkit_blockTag = "@name "
endif
if !exists("g:DoxygenToolkit_classTag")
  let g:DoxygenToolkit_classTag = "@class "
endif

if !exists("g:DoxygenToolkit_cinoptions")
  let g:DoxygenToolkit_cinoptions = "c1C1"
endif
if !exists("g:DoxygenToolkit_startCommentTag ")
  let g:DoxygenToolkit_startCommentTag = "/** "
  let g:DoxygenToolkit_startCommentBlock = "/* "
endif
if !exists("g:DoxygenToolkit_interCommentTag ")
  let g:DoxygenToolkit_interCommentTag = "* "
endif
if !exists("g:DoxygenToolkit_interCommentBlock ")
  let g:DoxygenToolkit_interCommentBlock = "* "
endif
if !exists("g:DoxygenToolkit_endCommentTag ")
  let g:DoxygenToolkit_endCommentTag = "*/"
  let g:DoxygenToolkit_endCommentBlock = "*/"
endif
if exists("g:DoxygenToolkit_commentType")
  if ( g:DoxygenToolkit_commentType == "C++" )
    let g:DoxygenToolkit_startCommentTag = "/// "
    let g:DoxygenToolkit_interCommentTag = "/// "
    let g:DoxygenToolkit_endCommentTag = ""
    let g:DoxygenToolkit_startCommentBlock = "// "
    let g:DoxygenToolkit_interCommentBlock = "// "
    let g:DoxygenToolkit_endCommentBlock = ""
  else
    let g:DoxygenToolkit_commentType = "C"
  endif
else
  let g:DoxygenToolkit_commentType = "C"
endif

" Compact documentation
" /**
"  * \brief foo      --->    /** \brief foo */
"  */
if !exists("g:DoxygenToolkit_compactOneLineDoc")
  let g:DoxygenToolkit_compactOneLineDoc = "no"
endif
" /**
"  * \brief foo             /**
"  *                         * \brief foo
"  * \param bar      --->    * \param bar
"  *                         * \return
"  * \return                 */
"  */
if !exists("g:DoxygenToolkit_compactDoc")
  let g:DoxygenToolkit_compactDoc = "no"
endif

" Necessary '\<' and '\>' will be added to each item of the list.
let s:ignoreForReturn = ['template', 'explicit', 'inline', 'static', 'virtual', 'void\([[:blank:]]*\*\)\@!', 'const', 'volatile', 'struct', 'extern']
if !exists("g:DoxygenToolkit_ignoreForReturn")
  let g:DoxygenToolkit_ignoreForReturn = s:ignoreForReturn[:]
else
  let g:DoxygenToolkit_ignoreForReturn += s:ignoreForReturn
endif
unlet s:ignoreForReturn

" Maximum number of lines to check for function parameters
if !exists("g:DoxygenToolkit_maxFunctionProtoLines")
  let g:DoxygenToolkit_maxFunctionProtoLines = 10
endif

" Add name of function/class/struct... after pre brief tag if you want
if !exists("g:DoxygenToolkit_briefTag_className")
  let g:DoxygenToolkit_briefTag_className = "no"
endif
if !exists("g:DoxygenToolkit_briefTag_structName")
  let g:DoxygenToolkit_briefTag_structName = "no"
endif
if !exists("g:DoxygenToolkit_briefTag_enumName")
  let g:DoxygenToolkit_briefTag_enumName = "no"
endif
if !exists("g:DoxygenToolkit_briefTag_namespaceName")
  let g:DoxygenToolkit_briefTag_namespaceName = "no"
endif
if !exists("g:DoxygenToolkit_briefTag_funcName")
  let g:DoxygenToolkit_briefTag_funcName = "no"
endif

" Keep empty line (if any) between comment and function/class/...
if !exists("g:DoxygenToolkit_keepEmptyLineAfterComment")
  let g:DoxygenToolkit_keepEmptyLineAfterComment = "no"
endif

" PYTHON specific
"""""""""""""""""
" Remove automatically self parameter from function to avoid its documantation
if !exists("g:DoxygenToolkit_python_autoRemoveSelfParam")
  let g:DoxygenToolkit_python_autoRemoveSelfParam = "yes"
endif
" Consider functions as if they always return something (default: yes)
if !exists("g:DoxygenToolkit_python_autoFunctionReturn")
  let g:DoxygenToolkit_python_autoFunctionReturn = "yes"
endif


"doxygen.vim
au BufNewFile,BufRead *.doxygen setfiletype doxygen
set syntax=c.doxygen
let g:load_doxygen_syntax=1
