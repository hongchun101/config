"vim
nnoremap <leader>ve :e $MYVIMRC<CR>
autocmd FileType vim,lua nnoremap <buffer> <leader>vs :source<CR>

autocmd FileType rs nnoremap <buffer><silent> = :RustFmt<CR>

inoremap jj <Esc>
nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $
"nnoremap J 5j
"nnoremap K 5k
nnoremap U <C-r>
nnoremap gk <S-#>
nnoremap gj <S-*>
"nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
nnoremap <silent> <leader>as :Startify<CR>

nnoremap <silent> <leader>wv :vs<CR>
nnoremap <silent> <leader>ws :sp<CR> 
nnoremap <silent> <leader>wd :q<CR> 
nnoremap <silent> <leader>ww <C-w>w 
nnoremap <silent> gn <C-w>w
nnoremap <silent> <leader>wh <C-w>h
nnoremap <silent> <leader>wj <C-w>j 
nnoremap <silent> <leader>wk <C-w>k 
nnoremap <silent> <leader>wl <C-w>l 

nnoremap <silent> <leader>ss :SSave<CR>
nnoremap <silent> <leader>sl :SLoad<CR>
nnoremap <silent> <leader>sd :SDelete<CR>
nnoremap <silent> <leader>sc :SClose<CR>

nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>

nnoremap tt :tabnew<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprevious<CR>

nnoremap gh :SidewaysLeft<CR>
nnoremap gl :SidewaysRight<CR>
