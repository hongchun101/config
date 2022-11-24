" markdown图片插入
let g:mdip_imgdir='pic'
"let g:mdip_imgname='image'

autocmd FileType markdown nnoremap <buffer> <leader>mp :MarkdownPreview<CR>
autocmd FileType markdown nnoremap <buffer> <leader>mn :Toc<CR>

autocmd Filetype markdown inoremap <buffer> ;1 #<Space><Esc>A
autocmd Filetype markdown inoremap <buffer> ;2 ##<Space><Esc>A
autocmd Filetype markdown inoremap <buffer> ;3 ###<Space><Esc>A
autocmd Filetype markdown inoremap <buffer> ;4 ####<Space><Esc>A
autocmd Filetype markdown inoremap <buffer> ;5 #####<Space><Esc>A
autocmd Filetype markdown inoremap <buffer> ;6 ######<Space><Esc>A

autocmd Filetype markdown inoremap <buffer> ;b ****<Esc>F*i
autocmd Filetype markdown inoremap <buffer> ;i **<Esc>i
autocmd Filetype markdown inoremap <buffer> ;c ```java<Enter>```<Esc>O
autocmd Filetype markdown inoremap <buffer> ;o [[]]<Esc>hi
autocmd Filetype markdown inoremap <buffer> ;d ~~~~<Esc>hi
autocmd Filetype markdown inoremap <buffer> ;u <u></u><Esc>F<i
autocmd Filetype markdown inoremap <buffer> ;l []()<Esc>F]i
autocmd FileType markdown inoremap <buffer><silent> ;p <ESC>:call mdip#MarkdownClipboardImage()<CR>

autocmd FileType markdown,md nnoremap <buffer> <leader>o :call DoubleLink()<CR>

" 双链跳转 目前只实现了固定目录下的子文件夹类所有文件的跳转
function! DoubleLink()
  execute 'normal F[l'
  let l:word = expand('<cfile>')
  let length = len(l:word)
  let l:sep = strridx(l:word, '#')
  if l:sep == -1
    let l:mdfile = strpart(l:word,2,length - 4).'.md'
    let l:go_root = globpath('C:\Users\12513\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\notes\', '*')
    for item in split(l:go_root, '\n')
      let l:go_dicts = globpath(item, '*.md')
      let l:go_detail_dicts = split(l:go_dicts, '\n')
      for item_detail in l:go_detail_dicts
        let l:name = split(item_detail, '\')
        if l:mdfile == l:name[len(l:name) - 1]
          execute ':e ' item_detail
          return
        endif
      endfor
    endfor
  else 
    let l:file = strpart(l:word, 2, l:sep-2)
    let l:location = strpart(l:word, l:sep+1, length-len(l:file) - 5)
    let l:mdfile = l:file.'.md'
    let l:go_root = globpath('C:\Users\12513\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu20.04onWindows_79rhkp1fndgsc\LocalState\rootfs\home\notes\', '*')
    for item in split(l:go_root, '\n')
      let l:go_dicts = globpath(item, '*.md')
      let l:go_detail_dicts = split(l:go_dicts, '\n')
      for item_detail in l:go_detail_dicts
        let l:name = split(item_detail, '\')
        if l:mdfile == l:name[len(l:name) - 1]
          execute ':e ' item_detail
          execute 'normal gg'
          execute '/' l:location
          return
        endif
      endfor
    endfor
  endif
endfunction

