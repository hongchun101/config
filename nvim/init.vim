runtime ./core.vim

lua require('core')
lua require('keybindings')

runtime ./config/setting.vim
runtime ./config/plug.vim
runtime ./config/markdown.vim
runtime ./config/git.vim
runtime ./config/format.vim

runtime ./plug/quickrun.vim
runtime ./plug/coc.vim
runtime ./plug/floaterm.vim
runtime ./plug/fzf.vim
runtime ./plug/nerdtree.vim
runtime ./plug/gruvbox.vim
runtime ./plug/airline.vim
runtime ./plug/telescope.vim
runtime ./plug/tagbar.vim
runtime ./plug/notify.vim
runtime ./plug/quickrun.vim
"runtime ./plug/treesitter.vim

lua require('leap').add_default_mappings()
lua require('flit')

hi Search cterm=NONE ctermfg=black ctermbg=red

colorscheme gruvbox-material
" nvim透明
let g:transparent_enabled=v:true

au TextYankPost * silent! lua vim.highlight.on_yank {higroup="IncSearch", timeout=150}

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|DONE\|XXX\|BUG\|HACK\)')
  autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif


" 使用vscode打开文件
function! OpenFileWithVscode()
  let file_name = expand('%')
  execute ':! code ' file_name 
endfunction

function! NumberToggle()
    if(&relativenumber == 1)
        set norelativenumber number
    else
        set relativenumber
    endif
endfunction



