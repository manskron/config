" ============================================================================ "
" ===                                UI                                    === "
" ============================================================================ "

" Editor theme
try
  colorscheme gruvbox
catch
  colorscheme slate
endtry

" Add custom highlights in method that is executed every time a
" colorscheme is sourced
" See https://gist.github.com/romainl/379904f91fa40533175dfaec4c833f2f for
" details
function! MyHighlights() abort
  " Hightlight trailing whitespace
  highlight Trail ctermbg=red guibg=red
  call matchadd('Trail', '\s\+$', 100)
endfunction

augroup MyColors
  autocmd!
  autocmd ColorScheme * call MyHighlights()
augroup END

" Change vertical split character to be a space (essentially hide it)
set fillchars+=vert:.

" Set preview window to appear at bottom
set splitbelow

" Don't dispay mode in command line (airilne already shows it)
set noshowmode

" coc.nvim color changes
hi! link CocErrorSign WarningMsg
hi! link CocWarningSign Number
hi! link CocInfoSign Type

" Make background transparent for many things
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! LineNr ctermfg=NONE guibg=NONE
hi! SignColumn ctermfg=NONE guibg=NONE
hi! StatusLine guifg=#16252b guibg=#6699CC
hi! StatusLineNC guifg=#16252b guibg=#16252b

" Try to hide vertical spit and end of buffer symbol
hi! VertSplit gui=NONE guifg=#17252c guibg=#17252c
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=#17252c guifg=#17252c

" Customize NERDTree directory
hi! NERDTreeCWD guifg=#99c794

" Make background color transparent for git changes
hi! SignifySignAdd guibg=#000000
hi! SignifySignDelete guibg=#000000
hi! SignifySignChange guibg=#000000

" Highlight git change signs
hi! SignifySignAdd guifg=#99c794
hi! SignifySignDelete guifg=#ec5f67
hi! SignifySignChange guifg=#c594c5

"  Keeps git gutter clear
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green ctermbg=0
highlight GitGutterChange ctermfg=yellow ctermbg=0
highlight GitGutterDelete ctermfg=red ctermbg=0
highlight GitGutterChangeDelete ctermfg=red ctermbg=0
hi EndOfBuffer  term=NONE cterm=NONE ctermfg=238  ctermbg=NONE
hi SpellBad     term=NONE cterm=NONE ctermfg=103  ctermbg=NONE
hi SpellCap     term=NONE cterm=NONE ctermfg=66   ctermbg=NONE
hi Whitespace   term=NONE cterm=NONE ctermfg=234  ctermbg=235

" Call method on window enter
augroup WindowManagement
  autocmd!
  autocmd WinEnter * call Handle_Win_Enter()
augroup END

" Change highlight group of preview window when open
function! Handle_Win_Enter()
  if &previewwindow
    setlocal winhighlight=Normal:MarkdownError
  endif
endfunction
