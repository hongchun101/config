autocmd User FloatermOpen
hi FloatermNC guibg=grey
hi FloatermBorder guibg=grey guifg=black
"let g:floaterm_wintype='vsplit'
let g:floaterm_shell="pwsh -nologo"
let g:floaterm_width=0.9
let g:floaterm_height=0.9
let g:floaterm_position='center'
let g:floaterm_autoclose=2

tnoremap <F12> <C-\><C-n>:FloatermToggle<CR>
tnoremap <A-Left> <C-\><C-n>:FloatermPrev<CR>
tnoremap <A-Right> <C-\><C-n>:FloatermNext<CR>
tnoremap <A-F12> <C-\><C-n>:FloatermKill<CR>
tnoremap <Esc> <C-\><C-n>:FloatermHide<CR>

nnoremap <F12> :FloatermToggle<CR>

nnoremap <leader>tr :FloatermNew --height=0.4 --width=0.4 --wintype=float --position=topright<CR>
nnoremap <leader>tb :FloatermNew --height=0.4 --width=0.4 --wintype=float --position=bottomright<CR>
nnoremap <leader>ts :FloatermNew --wintype=split --height=10<CR>
nnoremap <leader>g :FloatermNew lazygit.exe<CR>

"nnoremap <leader>r :FloatermNew ranger<CR>
"nnoremap <leader>g :FloatermNew lazygit<CR>
nnoremap <leader>tt :FloatermToggle<CR>
"nnoremap <leader>t1 :FloatermNew htop<CR>
"nnoremap <leader>t2 :FloatermNew ncdu<CR>
nnoremap <leader>tn :FloatermNew --height=0.4 --width=0.4 --wintype=float --position=topright node<CR>
nnoremap <leader>tp :FloatermNew --height=0.4 --width=0.4 --wintype=float --position=topright python3<CR>
"nnoremap <leader>tf :FloatermNew fzf.exe<CR>
"nnoremap <leader>tn :FloatermNext<CR>
nnoremap <leader>tk :FloatermKill<CR>
"nnoremap <leader>tp :FloatermNew --wintype=vsplit --width=60<CR>

