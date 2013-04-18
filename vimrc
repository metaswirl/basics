function! Mosh_Tab_Or_Complete()
   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
   else
      return "\<Tab>"
endfunction

inoremap <Tab> <C-R>=Mosh_Tab_Or_Complete()<CR>
nnoremap ` :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1

" custom key mappings
map <C-e><Right> :bn!<CR>
map <C-e><Left> :bp!<CR>
let mapleader=","

" start MiniBufExplorer
"nmap mbe :MiniBufExplorer<CR>
nmap <C-t> :TlistToggle<CR>

" set file type
filetype on
filetype plugin on
syntax on
set ofu=syntaxcomplete#Complete
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as   set filetype=actionscript
au BufNewFile,BufRead *.pl   set filetype=prolog
au BufNewFile,BufRead *.tex  set filetype=tex

" custom options
set nocompatible
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set number
set autoindent
set smartindent
set showmatch
set ruler
set foldenable
set foldmethod=marker

" color
set t_Co=256
" colorscheme ir_black
colorscheme softlight 
" colorscheme crt
" colorscheme desert
" colorscheme wombat

" variables for snippets
let g:snips_author = 'Niklas Semmler'
let g:snips_student_id = '346378'

" makes vim reload when sourced
au! BufWritePost .vimrc source %

" resotre file position after closing
function! ResCur()
    if line("'\"") <= line("$")
        execute "normal! g`\""
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur()
augroup END

" improve pastig
set pastetoggle=<F2>

" get used to learning vim the hard way
map <Left> <NOP>
map <Right> <NOP>
map <Down> <NOP>
map <Up> <NOP>
imap <Left> <NOP>
imap <Right> <NOP>
imap <Down> <NOP>
imap <Up> <NOP>

" enable highlighting on search
set hls

" enable mouse
" set mouse=a

augroup filetypedetect
    au! BufRead,BufNewFile *nc setfiletype nc
augroup END
