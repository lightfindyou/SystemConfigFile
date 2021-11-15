:set number
:set showcmd
:set hls
:set is
:set ic 
filetype plugin on
runtime macros/matchit.vim
syntax on
hi! Important ctermbg=red guibg=red
:match Important /[^ ]+\*\*\*[0-9a-zA-Z,()'.-_= /\[\]\*]*$/


hi! myComment ctermbg=blue guibg=blue
:match myComment /^### .*/
