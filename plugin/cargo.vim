if exists('g:vim_cargo')
  finish
endif
let vim_cargo=1

autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs setlocal makeprg=cargo

if !exists('g:cargo_command')
  let g:cargo_command = "make {cmd}"
endif

com! CargoBuild call cargo#run('build')
com! CargoRun call cargo#run('run')
com! CargoTest call cargo#run('test')
com! CargoBench call cargo#run('bench')

func! cargo#run(cmd)
  let s:cargo_command = substitute(g:cargo_command, "{cmd}", a:cmd, 'g')
  execute s:cargo_command
endf
