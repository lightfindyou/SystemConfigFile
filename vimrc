:set number
:set showcmd
:set hls
:set is
:set ic 
:set mouse=a
filetype plugin on
runtime macros/matchit.vim
syntax on
"hi! Important ctermbg=red guibg=red
":match Important /[^ ]+\*\*\*[0-9a-zA-Z,()'.-_= /\[\]\*]*$/

hi! ERR ctermbg=red guibg=red
:match ERR /^ERROR.*:[0-9]*)/

"hi! myComment ctermbg=blue guibg=blue
":match myComment /^### .*/
<<<<<<< HEAD
=======

hi! ERR ctermbg=red guibg=red
:match ERR /^ERROR.*:[0-9]*)/

" hi! MSG ctermbg=blue guibg=blue
" :match MSG /^MSG.*:[0-9]*)/
>>>>>>> d7ccea3265e9a43f6e58b66cdcfb2cb4d18f57b4

" get cur positon in bytes
:command Cp echo eval(line2byte(line("."))+col("."))
" :set wrap
" :set textwidth=80
set nofoldenable    " disable folding
:set statusline=%<%f\ %r%=%-20.(%l,%c-%oB%)\ %P

" noremap <Leader>y "+y
" noremap <Leader>p "+p
:set clipboard=unnamedplus
