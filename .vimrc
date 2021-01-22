" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'ap/vim-templates'
Plug 'sillybun/vim-repl'
Plug 'tpope/vim-commentary'
Plug 'vim-latex/vim-latex'
" Plug 'skanehira/docker.vim'
Plug 'chrisdone/hindent'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number
syntax on
set cindent

map <C-I> :w <CR> :!pdflatex % <CR>
map <C-A> <CR> :!xdg-open %:r.pdf & <CR><CR>
map <C-n> :NERDTreeToggle<CR>
map <leader>r :REPLToggle<CR>
map t :!gcc '%' -o '%:r' && ./'%:r'<CR>
map <leader>t :!gcc '%' -o '%:r' && ./'%:r'
map <leader>n :NERDTreeToggle<CR>
map <leader>p :w !python %<CR>
map <leader>x :REPLSendAll<CR>


" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :sp <CR><C-]>

let NERDTreeShowHidden=1

" vim latex
let g:tex_flavor='latex'

" Different REPL commands
let g:repl_program = {
	\	 'python': ['python'],
	\	 'haskell': ['ghci'],
	\	 'javascript': ['node'],
	\	 'default': ['bash']
	\	 }

let g:repl_exit_commands = {
	\	'python': 'quit()',
	\	'haskell': ':q',
	\	'node': '.exit',
	\	'bash': 'exit',
	\	'zsh': 'exit',
	\	'default': 'exit',
	\	}

