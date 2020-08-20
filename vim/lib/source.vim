" Sources a file if it exists.
function! lib#source#FileIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

" Sources files from a glob.
function! lib#source#Glob(glob)
  for s:fpath in split(glob(a:glob), '\n')
    exe 'source' s:fpath
  endfor
endfunction
