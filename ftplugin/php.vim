" Language: PHP
 
if exists("b:did_ftplugin") | finish | endif
let b:did_ftplugin = 1

setlocal include=\\\(require\\\|include\\\)\\\(_once\\\)\\\?
setlocal iskeyword+=$
setlocal formatoptions-=t
setlocal formatoptions+=croql
setlocal comments=sr:/*,mb:*,ex:*/,://,b:#
setlocal define=define

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal expandtab
setlocal cindent


" Syntastic
let g:synatstic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:syntastic_aggregate_errors = 1
