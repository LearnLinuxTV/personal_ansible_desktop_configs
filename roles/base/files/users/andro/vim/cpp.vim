" Only do this when not done yet for this buffer
if exists("b:did_CPP_ftplugin")
  finish
endif
let b:did_CPP_ftplugin = 1

" =================================================
" tab
" =================================================
setlocal tabstop=2
setlocal softtabstop=2
setlocal shiftwidth=2

" =================================================
" Completion
" =================================================
" dictionary
setlocal dictionary=~/.vim/dict/cpp-libstdc++.dict,~/.vim/dict/c-eglibc.dict,~/.vim/dict/cpp-boost.dict

" tags 

" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_MayCompleteDot = 1
let OmniCpp_MayCompleteArrow = 1
let OmniCpp_MayCompleteScope = 1
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]

" Set completement for C++
setlocal omnifunc=cppcomplete#Complete

" Set F12 to use ctags for C++
map <F12> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>

" =================================================
" cscope settings
" =================================================
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

if has("cscope")
  setlocal csprg=/usr/bin/cscope
  setlocal csto=0
  setlocal cst
  setlocal nocsverb
  " add any database in current directory
  if filereadable("cscope.out")
    cs add cscope.out
  "  else add database pointed to by environment
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif

  setlocal csverb
  setlocal cscopetag
  setlocal cscopequickfix=s-,g-,c-,d-,t-,e-,f-,i-
endif

function! s:clang_format()
  let now_line = line(".")
  exec ":%! clang-format -style=Google"
  exec ":" . now_line
endfunction

if executable('clang-format')
  augroup cpp_clang_format
    autocmd!
    autocmd BufWrite,FileWritePre,FileAppendPre *.[ch]pp call s:clang_format()
  augroup END
endif
