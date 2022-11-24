nnoremap <leader>1  :call Tab_buf_switch(1)<CR>
nnoremap <leader>2  :call Tab_buf_switch(2)<CR>
nnoremap <leader>3  :call Tab_buf_switch(3)<CR>
nnoremap <leader>4  :call Tab_buf_switch(4)<CR>
nnoremap <leader>5  :call Tab_buf_switch(5)<CR>
nnoremap <leader>6  :call Tab_buf_switch(6)<CR>
nnoremap <leader>7  :call Tab_buf_switch(7)<CR>
nnoremap <leader>8  :call Tab_buf_switch(8)<CR>
nnoremap <leader>9  :call Tab_buf_switch(9)<CR>

let g:airline#extensions#tabline#enabled=1 " 在buffer栏显示所有buffer
let g:airline#extensions#tabline#formatter='unique_tail' " buffer栏文件名显示格式

let g:airline_theme='lighthaus'
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:feat_enable_airline = 1
let g:airline_mode_map = {
      \ '__'     : '-',
      \ 'c'      : 'C',
      \ 'i'      : 'I',
      \ 'ic'     : 'I',
      \ 'ix'     : 'I',
      \ 'n'      : 'N',
      \ 'multi'  : 'M',
      \ 'ni'     : 'N',
      \ 'no'     : 'N',
      \ 'R'      : 'R',
      \ 'Rv'     : 'R',
      \ 's'      : 'S',
      \ 'S'      : 'S',
      \ ''     : 'S',
      \ 't'      : 'T',
      \ 'v'      : 'V',
      \ 'V'      : 'V',
      \ ''     : 'V',
      \ }

function! Tab_buf_switch(num) 
    if exists('g:feat_enable_airline') && g:feat_enable_airline == 1
        execute 'normal '."\<Plug>AirlineSelectTab".a:num
    else
        if exists( '*tabpagenr' ) && tabpagenr('$') != 1
            "" Tab support && tabs open
            execute 'normal '.a:num.'gt'
        else
            let l:temp=a:num
            let l:buf_index=a:num
            let l:buf_count=len(filter(range(1, bufnr('$')), 'buflisted(v:val)'))
            if l:temp > l:buf_count
                return
            endif
            while l:buf_index != 0
                while !buflisted(l:temp)
                    let l:temp += 1
                endw
                let l:buf_index -= 1
                if l:buf_index != 0
                    let l:temp += 1
                endif
            endw
            execute ':'.l:temp.'b'
        endif
    endif
endfunction
