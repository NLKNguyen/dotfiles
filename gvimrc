set vb t_vb=
" set guifont=monospace:h12,consolas:h13
set guioptions=
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Meslo\ LG\ S\ DZ\ for\ Powerline\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h13:cANSI
  endif
endif
