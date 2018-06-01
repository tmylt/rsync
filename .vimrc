"set how many lines of history vim has to remeber.
set history=500

" 检测文件类型
filetype on
"针对不同文件类型采用不同的缩进
filetype indent on
"Enable filetype plugins
filetype plugin on
"自动补全
filetype plugin indent on

set list lcs=tab:\¦\  


set autoread " 文件修改后自动载入
set nocompatible "去掉vi一致性
set shortmess=atI "启动时不显示援助索马里儿童的提示

"取消备份
set nobackup
set nowb
set noswapfile

" 关于缩进
"set expandtab "使用空格代替tab,不用
set shiftwidth=4
set tabstop=4
set smarttab

"linebreak on 500 characters
set lbr
set tw=500

set number
set ruler
set nowrap "取消换行
set ai "auto indent
set si "smart indent
set backspace=eol,start,indent 

set cursorline "突出显示当前行
set showmatch "括号匹配
set mat=2 "括号匹配时每秒闪烁的频率

set hlsearch "高亮搜索结果
"set ignorecase "搜索时忽略大小写
set incsearch "随着键入即时搜索
set smartcase "有一个或以上大写字母时仍旧大小写敏感

if has('mouse')
	set mouse=a
endif

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb= 
set tm=500

set foldenable "代码折叠
"折叠方法
"manual 手动折叠
"indent 使用缩进折叠
"expr   使用表达式折叠
"syntax 使用语法定义折叠
"diff   对没有更改的文本进行折叠
"maker  使用标记进行折叠,默认标记是{和}
set foldmethod=syntax
set foldcolumn=2  "在左侧显示折叠的层次

syntax enable
syntax on
"colorscheme monokai "sublime配色方案
"colorscheme molokai "sublime配色方案
"colorscheme peaksea

set encoding=utf8 "set utf8 as standard encoding and en_us as the standard language
"set enc=2byte-gb18030
"set fileencodings=ucs-bom,utf-8,gb18030,default "自动判别编码,依次尝试以下编码
set ffs=unix,dos,mac "use unix as the standard file type

"自动完成
set completeopt=longest,menu
"增强模式中命令自动完成操作
set wildmenu
" 忽略编译文件
set wildignore=*.o,*~,*.pyc



autocmd FileType php set omnifunc=phpcomplete

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'pangloss/vim-javascript'
Plugin 'Valloric/YouCompleteMe'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
