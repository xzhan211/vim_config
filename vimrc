"Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ================ General Config ====================

set textwidth=80
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set hlsearch    "high light search result
set cc=80 "get a red line reminder at column count 80
set clipboard="*" "the origina
"set clipboard+=unnamed "make vim register plus sys register,
set cursorline "get a line under where cursor point
"禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
"set lines=35 columns=80 "maybe a better choice
autocmd BufWritePost $MYVIMRC source $MYVIMRC " 让配置变更立即生效
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase

"Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}


" This makes vim act like all other editors, buffers can
" exist in the background without being in a window.
" http://items.sjbach.com/319/configuring-vim-right
set hidden

"turn on syntax highlighting
syntax on

" Change leader to a comma because the backslash is too far away
" That means all \x commands turn into ,x
" The mapleader has to be set before vundle starts loading all
" the plugins.
let mapleader=","

"================= vundle ===========================
"filetype off
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"if filereadable(expand("~/.vimrc.bundles"))
"    source ~/.vimrc.bundles
"endif


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.
" NOT WORKING: Didnt work when yanked right out of YADR
"silent !mkdir ~/.vim/backups > /dev/null 2>&1
"set undodir=~/.vim/backups
"set undofile

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set foldmethod=indent

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:Â·

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Completion =======================

set wildmode=list:longest
" vim 自身命令行模式智能补全
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ========================================
" Vim plugin configuration
" ========================================
"
" This file contains the list of plugin installed using vundle plugin manager.
" Once you've updated the list of plugin, you can run vundle update by issuing
" the command :BundleInstall from within vim or directly invoking it from the
" command line with the following syntax:
" vim --noplugin -u vim/vundles.vim -N "+set hidden" "+syntax on" +BundleClean! +BundleInstall +qall
" Filetype off is required by vundle
filetype off

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/vundle/
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle (required)
"Plugin 'gmarik/vundle'
Plugin 'VundleVim/Vundle.vim'

""""""""""""""""""""""""""""""""" MY VUNDLES """""""""""""""""""""""
" HEAVILY/MOSTLY taken from https://github.com/skwp/dotfiles


" Make Git pervasive in vim ( :Gblame + Glog + many more )
Plugin 'tpope/vim-fugitive'

" file navigator gutter
Plugin 'scrooloose/nerdtree.git'

" build a more useful statusline
Plugin 'Lokaltog/vim-powerline'

" awesome syntax highlighting
" TODO: Figure out how to enable correctly for Ruby.
Plugin 'scrooloose/syntastic'

" a complex autocomplete tool developed by a developer in google research project
"Plugin 'Valloric/YouCompleteMe'
" TODO: the remote end usually end unexceptlly, install it manually

" Command+T replacement (ctrl+P)
"Plugin 'kien/ctrlp.vim'

" Rails plugin ( :A mapping! )
"Plugin 'tpope/vim-rails.git'

" comment lines out (gc in visual mode)
"Plugin 'tomtom/tcomment_vim.git'

" Make it look amazing
"Plugin 'altercation/vim-colors-solarized'

" Pimped out bar at the bottom of current buffer
"Plugin 'bling/vim-airline.git"

" Highlights class names + methods more brightly
" Handy for seeing syntax shape before your eyes
"Plugin 'vim-scripts/TagHighlight.git'

" Search everything in the current dir via :Ack
"Plugin 'mileszs/ack.vim'

" Enable Markdown Preview + GitHub flavored markdown
"Plugin 'jtratner/vim-flavored-markdown.git'
"Plugin 'nelstrom/vim-markdown-preview'

" TODO: Figure out how to do indents intelligently
"Plugin 'austintaylor/vim-indentobject'

" Open a shell within vim via :ConqueTerm
"Plugin 'skwp/vim-conque'

" Syntax highlighting for .bats files
"Plugin 'rosstimson/bats.vim'

" Open up a bash shell quickly in the current window
"map <Leader>s <esc>:ConqueTermSplit bash<cr>

" Make Ctrl+w o, function with toggle niceness
"Plugin 'vim-scripts/ZoomWin'

"Plugin 'kchmck/vim-coffee-script'

" requires exuberant ctags
Plugin 'majutsushi/tagbar'

" plugin taglist
" from http://www.vim.org/scripts/script.php?script_id=273`:w
" comment out for the test of vundle
"let Tlist_Show_One_File=1
"let Tlist_Exit_OnlyWindow=1

"let g:winManagerWindowLayout='FileExplorer|TagList'
"nmap wm :WMToggle<cr>

set completeopt=longest,menu
""a END OF VUNDLE PLUGINS
"""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
"=================== some config about Plugin===========================
" 设置 tagbar 子窗口的位置出现在主编辑区的左边
let tagbar_left=1
" 设置显示／隐藏标签列表子窗口的快捷键。速记：identifier list by tag
"nnoremap <Leader>ilt :TagbarToggle<CR>
nnoremap <Leader>il :TagbarToggle<CR>
" 设置标签子窗口的宽度
let tagbar_width=32
" tagbar 子窗口中不显示冗余帮助信息
let g:tagbar_compact=1
" 设置 ctags 对哪些代码标识符生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
         \ 'c:classes:0:1',
         \ 'd:macros:0:1',
         \ 'e:enumerators:0:0',
         \ 'f:functions:0:1',
         \ 'g:enumeration:0:1',
         \ 'l:local:0:1',
         \ 'm:members:0:1',
         \ 'n:namespaces:0:1',
         \ 'p:functions_prototypes:0:1',
         \ 's:structs:0:1',
         \ 't:typedefs:0:1',
         \ 'u:unions:0:1',
         \ 'v:global:0:1',
         \ 'x:external:0:1'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
     \ }
" =========================end of config=================================

" Color theme (drawing from altercation/vim-colors-solarized Bundle)
syntax enable
set background=dark
"colorscheme solarized
"color solarized

" For MacVim
set guifont=Monaco:h16




" 使用 NERDTree 插件查看工程文件。设置快捷键
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" ===== SYNTASTIC
"mark syntax errors with :signs
let g:syntastic_enable_signs=1
"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0
"show the error list automatically
let g:syntastic_auto_loc_list=1
"don't care about warnings
"let g:syntastic_quiet_warnings=0
let g:syntastic_quiet_messages = {'level': 'warnings'}

" ======== some config for youcompleteme plugin ========================
" TODO: quickfix中的静态检查代码是以YCM为基础的，但是我对YCM配置还不是很清楚
" ??: 在java项目中，检查不到项目中的类，所有会报错
" YCM 补全菜单配色
" 菜单
highlight Pmenu ctermfg=3 ctermbg=0 guifg=#005f87 guibg=#EEE8D5
" 选中项
highlight PmenuSel ctermfg=2 ctermbg=3 guifg=#AFD700 guibg=#106900
" 补全功能在注释中同样有效
let g:ycm_complete_in_comments=1
" 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
let g:ycm_confirm_extra_conf=0
" 开启 YCM 标签补全引擎
let g:ycm_collect_identifiers_from_tags_files=1
" 引入 C++ 标准库tags
set tags+=/data/misc/software/misc./vim/stdcpp.tags
" YCM 集成 OmniCppComplete 补全引擎，设置其快捷键
inoremap <leader>c <C-x><C-o>
" 补全内容不以分割子窗口形式出现，只显示补全列表
set completeopt-=preview
" 从第一个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=1
" 禁止缓存匹配项，每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1
" set python semantic completion
let g:ycm_python_binary_path = 'python'

" Coffee Script Compilation
" Compile the current file into a vertcally split screen
"map <Leader>cs <esc>:CoffeeCompile vert<cr>

" ====== Make tabs be addressable via Apple+1 or 2 or 3, etc
" Use numbers to pick the tab you want (like iTerm)
map <silent> <D-1> :tabn 1<cr>
map <silent> <D-2> :tabn 2<cr>
map <silent> <D-3> :tabn 3<cr>
map <silent> <D-4> :tabn 4<cr>
map <silent> <D-5> :tabn 5<cr>
map <silent> <D-6> :tabn 6<cr>
map <silent> <D-7> :tabn 7<cr>
map <silent> <D-8> :tabn 8<cr>
map <silent> <D-9> :tabn 9<cr>

" ===== Add some shortcuts for ctags
map <Leader>tt <esc>:TagbarToggle<cr>
" TODO later, get open tag in new tab working
" http://stackoverflow.com/questions/563616/vim-and-ctags-tips-and-tricks
" map <C-\>:tab split<CR>:exec("tag ".expand("<cword>"))<CR>
"map <A-]>:vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown
" with .md extensions
augroup markdown
    au!
    au BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END

" Function {{{
" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function! RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
autocmd BufWritePre * call RemoveTrailingWhitespace()
" }}}

set exrc
set secure
