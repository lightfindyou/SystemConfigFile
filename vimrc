:set number
:set showcmd
:set hls
:set is
:set ic 
:set mouse=a
filetype plugin on
runtime macros/matchit.vim
syntax on
hi! Important ctermbg=red guibg=red
:match Important /[^ ]+\*\*\*[0-9a-zA-Z,()'.-_= /\[\]\*]*$/


"hi! myComment ctermbg=blue guibg=blue
":match myComment /^### .*/

hi! ERR ctermbg=red guibg=red
:match ERR /^ERROR.*:[0-9]*)/

" hi! MSG ctermbg=blue guibg=blue
" :match MSG /^MSG.*:[0-9]*)/

" get cur positon in bytes
:command Cp echo eval(line2byte(line("."))+col("."))
" :set wrap
" :set textwidth=80
set nofoldenable    " disable folding
:set statusline=%<%f\ %r%=%-20.(%l,%c-%oB%)\ %P

" noremap <Leader>y "+y
" noremap <Leader>p "+p
:set clipboard=unnamedplus
