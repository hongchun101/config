runtime ./core.vim
set winaltkeys=no
if has('nvim')
  try
    call rpcnotify(1, 'Gui', 'Option', 'Tabline', 0)
    call rpcnotify(1, 'Gui', 'Option', 'Popupmenu', 0)
  catch
  endtry
endif
"let g:loaded_python3_provider = 'D:\\devlop\\python\\pkgs\\python-3.9.12-h6244533_0\\python.exe'
"let g:python3_host_prog='D:\\devlop\\python\\pkgs\\python-3.9.12-h6244533_0\\'
