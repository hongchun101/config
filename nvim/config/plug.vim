call plug#begin('D:/Editor/nvimplug/plugged')

Plug 'mhinz/vim-startify' " nvim首页
"Plug 'glepnir/dashboard-nvim'
" 主题 
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'rakr/vim-one' 
Plug 'glepnir/zephyr-nvim'

Plug 'neoclide/coc.nvim', {'branch':'relase'} 

Plug 'ggandor/leap.nvim'
Plug 'ggandor/flit.nvim'
Plug 'sheerun/vim-polyglot' " 语法高亮
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'famiu/bufdelete.nvim'
Plug 'rcarriga/nvim-notify' " 弹窗
Plug 'liuchengxu/vim-which-key' " which key
Plug 'preservim/nerdtree' " nerdtree

Plug 'tpope/vim-surround'     
Plug 'easymotion/vim-easymotion'
Plug 'justinmk/vim-sneak'
Plug 'mg979/vim-visual-multi' " 多光标
Plug 'kshenoy/vim-signature' " 书签可视化
Plug 'rrethy/vim-illuminate' " 突出显示当前单词
Plug 'preservim/nerdcommenter' " 注释
"Plug 'Chiel92/vim-autoformat' " 格式化
Plug 'gcmt/wildfire.vim' " 回车键选中`
Plug 'psliwka/vim-smoothie' " vim平滑移动<C-d> <C-u>
Plug 'tpope/vim-abolish' "单词大小写修改 cr+ s(snake_case) m(MixedCase) c(camelCase) u(UPPER_CASE) -(dash-case) .(dat.case) <space>(space case) t(Tiele Case)

Plug 'voldikss/vim-translator' " 翻译
"Plug 'puremourning/vimspector' "debugger
Plug 'djoshea/vim-autoread'
"Plug 'nvim-lua/plenary.nvim' " todo高亮
"Plug 'folke/todo-comments.nvim'
Plug 'godlygeek/tabular' "对齐
Plug 'unblevable/quick-scope'

"markdown
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.vim' " markdown预览
Plug 'ferrine/md-img-paste.vim' " markdown图片插入
Plug 'mzlogin/vim-markdown-toc' "markdown目录

" vue
"Plug 'voldikss/vim-vue'
Plug 'posva/vim-vue'
Plug 'leafOfTree/vim-vue-plugin' " vue

Plug 'junegunn/vim-easy-align'  " 对齐
Plug 'junegunn/goyo.vim' " 纯净编辑模式

Plug 'vim-syntastic/syntastic' " 语法检查

Plug 'mattn/emmet-vim' 

Plug 'ryanoasis/vim-devicons' " icon
Plug 'owickstrom/vim-colors-paramount'

Plug 'kyazdani42/nvim-web-devicons'
"Plug 'rebelot/heirline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Xuyuanp/scrollbar.nvim'
"Plug 'numToStr/Comment.nvim' 
"Plug '907th/vim-auto-save' " vim 自动保存
Plug 'xiyaowong/nvim-transparent' " 让vim透明


"Plug 'preservim/tagbar'
Plug 'liuchengxu/vista.vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'itchyny/vim-cursorword'  
" 版本控制
Plug 'airblade/vim-gitgutter' " git diff显示
Plug 'f-person/git-blame.nvim'  " git blame
Plug 'tpope/vim-rhubarb'

Plug 'luochen1990/rainbow' " 彩虹括号
"Plug 'camspiers/lens.vim' " 自动调整大小
"Plug 'camspiers/animate.vim'  " 动画
"Plug 'jiangmiao/auto-pairs'  " auto complete brackets
Plug 'dense-analysis/ale'
" lsp Server
"Plug 'neovim/nvim-lspconfig'
"Plug 'williamboman/nvim-lsp-installer'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'ray-x/lsp_signature.nvim' " 函数签名
"Plug 'kosayoda/nvim-lightbulb' " code action
Plug 'AndrewRadev/sideways.vim' "

Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'voldikss/vim-floaterm' " floaterm
Plug 'thinca/vim-quickrun'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" 语言
"Rust
"Plug 'rust-lang/rust.vim'
