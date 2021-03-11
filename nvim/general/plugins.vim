" All plugins used in Neovim, managed with vim-plug

call plug#begin('~/.config/nvim/autoload/plugged')

    " Files
    " File explorer
    Plug 'scrooloose/NERDTree'
    " Airline status
    Plug 'vim-airline/vim-airline'

    " Syntax
    " CoC intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Better syntax support
    Plug 'sheerun/vim-polyglot'

    " Themes
    " One Dark 
    Plug 'joshdick/onedark.vim'
    " Gruvbox 
    Plug 'morhetz/gruvbox'
    " Nord
    Plug 'arcticicestudio/nord-vim'

call plug#end()

" Auto-install missing plugins
autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall | q
  \| endif
