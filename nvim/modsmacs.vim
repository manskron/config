
" ============================================================================= "
" ===                             🚀 SPACEMODS 🚀                           === "
" ============================================================================= "

" Remap leader key to <space>
let g:mapleader=' '

" <leader>f runs prettier on selection
" vmap <leader>f  <Plug>(coc-format-selected)
" nmap <leader>f  <Plug>(coc-format-selected)
vmap <leader>p  :CocCommand prettier.formatFile<CR>
nmap <leader>p  :CocCommand prettier.formatFile<CR>

" <leader>f to quit
map <leader>q :q<CR>

" / to generate new vertical split
nmap <leader>/ :vsp<CR>

" - to generate new vertical split
nmap <leader>- :sp<CR>

" <leader>fs to save file
map <leader>fs :w<CR>

" <leader>bd to close buffer
map <leader>bd :bd<CR>


" ====================== "
" ===  Plugin Keys   === "
" ======================="

" === Denite shorcuts === "
"   <leader>bb         - Browser currently open buffers
"   <leader>, - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and
"   close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
" nmap ; :Denite buffer -split=floating -winrow=1<CR>
" nmap <leader>t :Denite file/rec -split=floating -winrow=1<CR>
nnoremap <leader>bb :Denite buffer -split=floating<CR>
nnoremap <leader>, :Denite file/rec -split=floating<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty -mode=normal<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:. -mode=normal<CR>

" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" === coc.nvim === "
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" === vim-better-whitespace === "
"   <leader>y - Automatically remove trailing whitespace
nmap <leader>y :StripWhitespace<CR>

" === Search shorcuts === "
"   <leader>h - Find and replace
map <leader>h :%s///<left><left>

" === Easy-motion shortcuts ==="
"   <leader>w - Easy-motion highlights first word letters bi-directionally
map <leader>w <Plug>(easymotion-bd-w)

