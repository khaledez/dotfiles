hi! def link phpDocTags  phpDefine
hi! def link phpDocParam phpType

setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal shiftround
setlocal expandtab
setlocal cindent

" Syntastic
let g:synatstic_php_checkers = ['php', 'phpcs', 'phpmd']
