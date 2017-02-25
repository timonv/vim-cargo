if exists('g:vim_cargo')
  finish
endif
let vim_cargo=1

autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs compiler cargo
autocmd BufRead,BufNewFile Cargo.toml,Cargo.lock,*.rs setlocal makeprg=cargo

if !exists('g:cargo_command')
  let g:cargo_command = "make {cmd}"
endif

com! -nargs=* CargoBench call cargo#run('bench ' . <q-args>)
com! -nargs=* CargoBuild call cargo#run('build ' . <q-args>)
com! -nargs=* CargoClean call cargo#run('clean ' . <q-args>)
com! -nargs=* CargoDoc call cargo#run('doc ' . <q-args>)
com! -nargs=* CargoRun call cargo#run('run ' . <q-args>)
com! -nargs=* CargoTest call cargo#run('test ' . <q-args>)
com! -nargs=* CargoUpdate call cargo#run('update ' . <q-args>)
com! -complete=file -nargs=+ CargoNew call cargo#run('new ' . <q-args>)

func! cargo#run(cmd)
  let s:cargo_command = substitute(g:cargo_command, "{cmd}", a:cmd, 'g')
  execute s:cargo_command
endf
