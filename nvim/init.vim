" Show (relative) line numbers
set number relativenumber

" Indent using two spaces, enable auto-indent, etc.
set tabstop=2 shiftwidth=0 expandtab autoindent smartindent

" Allow hidden, unsaved buffers
set hidden

" When opening a split, have it below or to the right
set splitbelow splitright

" Theming
colorscheme koehler
augroup vimrc
  autocmd!
  autocmd Colorscheme * highlight Comment cterm=italic
  autocmd Colorscheme * highlight StatusLine ctermbg=NONE cterm=italic,underline
  autocmd Colorscheme * highlight StatusLineNC ctermbg=NONE cterm=italic,underline
  autocmd Colorscheme * highlight VertSplit cterm=NONE ctermfg=gray
  autocmd Colorscheme * highlight TabLine ctermbg=NONE cterm=italic,underline
  autocmd Colorscheme * highlight TabLineFill ctermbg=NONE cterm=underline
  autocmd Colorscheme * highlight TabLineSel ctermbg=NONE cterm=bold,underline
  autocmd Colorscheme * highlight ErrorMsg ctermbg=NONE ctermfg=red cterm=bold
augroup END

" Plugins
call plug#begin()
runtime plugins.vim
call plug#end()

" Bindings
let mapleader = "é"

" Mapping selecting mappings
nmap <leader>b :Buffers<cr>
nmap <leader>f :Files<cr>

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-l> <plug>(fzf-complete-line)
