" the smartest indent engine for C
setlocal cindent
" " my preferred "Allman" style indentation
setlocal cino="Ls,:0,l1,t0,(s,U1,W4"

" shows long build messages better
setlocal ch=2

" auto-create folds per grammar
setlocal foldmethod=syntax
setlocal foldlevel=10

" local project headers
setlocal path=.,*/include/**3,./*/include/**3
" basic system headers
setlocal path+=/usr/include

setlocal tags=./tags,tags;~
"                      ^ in working dir, or parents
"                ^ sibling of open file

" the default is menu,preview but the preview window is annoying
setlocal completeopt=menu

iabbrev #i #include
iabbrev #d #define
iabbrev main() int main(int argc, char **argv)

