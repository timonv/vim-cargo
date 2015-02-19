if !exists('g:vim_cargo_dispatch')
  finish
endif

let vim_cargo_dispatch=1

command CargoBuild :Dispatch cargo build<cr>
command CargoClean :Dispatch cargo clean<cr>
command CargoDoc :Dispatch cargo doc<cr>
command CargoNew :Dispatch cargo new<cr>
command CargoRun :Dispatch cargo run<cr>
command CargoTest :Dispatch cargo test<cr>
command CargoBench :Dispatch cargo bench<cr>
command CargoUpdate :Dispatch cargo update<cr>


" Rust's package manager

" Usage:
"     cargo <command> [<args>...]
"     cargo [options]

" Options:
"     -h, --help       Display this message
"     -V, --version    Print version info and exit
"     --list           List installed commands
"     -v, --verbose    Use verbose output

" Some common cargo commands are:
"     build       Compile the current project
"     clean       Remove the target directory
"     doc         Build this project's and its dependencies' documentation
"     new         Create a new cargo project
"     run         Build and execute src/main.rs
"     test        Run the tests
"     bench       Run the benchmarks
"     update      Update dependencies listed in Cargo.lock

" See 'cargo help <command>' for more information on a specific command.
