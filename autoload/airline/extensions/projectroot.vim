" vim: et ts=2 sts=2 sw=2

if !exists('g:airline#extensions#projectroot#enabled')
  finish
endif

" settings
let g:airline#extensions#projectroot#root = '[NA]'

" -----------------------------------------------------------------------------
" First we define an init function that will be invoked from extensions.vim
function! airline#extensions#projectroot#init(ext)

  " Define a new part for the plugin.  This allows users to place this
  " extension in arbitrary locations.
  call airline#parts#define_raw('projectroot', '%{airline#extensions#projectroot#get_projectroot()}')

  " Next up we add a funcref so that we can run some code prior to the
  " statusline getting modifed.
  call a:ext.add_statusline_func('airline#extensions#projectroot#apply')

endfunction


" -----------------------------------------------------------------------------
" This function will be invoked just prior to the statusline getting modified.
function! airline#extensions#projectroot#apply(...)
    let w:airline_section_y = get(w:, 'airline_section_c', g:airline_section_y)
    let w:airline_section_y = '%{airline#extensions#projectroot#get_projectroot()}'.s:spc.g:airline_right_alt_sep.s:spc.w:airline_section_c
endfunction


" -----------------------------------------------------------------------------
" Finally, this function will be invoked from the statusline.
function! airline#extensions#projectroot#get_projectroot()
  let sw = &shiftwidth
  let et = &expandtab
  let im = et > 0 ? g:airline#extensions#projectroot#space_glyph : g:airline#extensions#projectroot#tab_glyph

endfunction

