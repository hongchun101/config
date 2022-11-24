autocmd FileType vue syntax sync fromstart
let g:syntastic_javascript_checkers = ['eslint']

" indent for different filetype
autocmd FileType vim setlocal tabstop=2 shiftwidth=0 softtabstop=4 
autocmd FileType php,ruby,yaml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType django,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
autocmd FileType java setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType vue setlocal tabstop=2 shiftwidth=0 softtabstop=4
autocmd FileType jsp set filetype=html
"autocmd FileType jsp RainbowToggleOff

