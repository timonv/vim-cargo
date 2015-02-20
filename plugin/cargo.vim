" if exists('g:vim_cargo_dispatch')
"   finish
" endif
" let vim_cargo_dispatch=1

com! CargoBuild call cargo#dispatch('build')
com! CargoClean call cargo#dispatch('clean')
com! CargoDoc call cargo#dispatch('doc')
com! -nargs=1 CargoNew call cargo#dispatch('new', <args>)
com! CargoRun call cargo#dispatch('run')
com! CargoTest call cargo#dispatch('test')
com! CargoBench call cargo#dispatch('bench')
com! CargoUpdate call cargo#dispatch('update')

func! cargo#dispatch(...)
  if a:1
    exec ':Dispatch cargo ' . a:0 . ' ' . a:1
  else
    exec ':Dispatch cargo ' . a:0
  end
endf
