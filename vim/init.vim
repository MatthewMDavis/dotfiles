"=========================================================================== "
" ~My vimrc~
"=========================================================================== "
" Author:        Matt Davis
"---------------------------------------------------------------------
" Want to set this before any others
let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'
let mapleader = "\<Space>"

function! s:SourceConfigFilesIn(directory)
  let directory_splat = '~/.vim/' . a:directory . '/*'
  for config_file in split(glob(directory_splat), '\n')
    if filereadable(config_file)
        execute 'source' config_file
    endif
  endfor
endfunction

"----------------------------------------------------------------

:let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
call plug#begin('~/.vim/plugged')

" Scrip'tease - Plug for working with plugins
Plug 'tpope/vim-scriptease'

" Install general javascript indent and highlighting
Plug 'pangloss/vim-javascript'

" Install React.js-specific handling (jsx format)
Plug 'mxw/vim-jsx'

" Abolish - Advanced substitutions
Plug 'tpope/vim-abolish'

" Ack - Integrata ack (grep replacement) into vim
Plug 'mileszs/ack.vim'

" Airline - Statusline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plugr - wrapper around bundler
Plug 'tpope/vim-bundler'

" Commentary - tim pope's comment plugin
Plug 'tpope/vim-commentary'

" Ctrlp - Vimscript fuzzy file opener
Plug 'kien/ctrlp.vim'

" DelimitMate - Puts matching closing tokens into code while you type
Plug 'Raimondi/delimitMate'

" easy align - Align by motion for tables and other structured content
Plug 'junegunn/vim-easy-align'

" Easy Buffer - Buffer list
Plug 'troydm/easybuffer.vim'

" Elixir support
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'

" Emmet - Text expansion for html markup
Plug 'mattn/emmet-vim'

" Endwise - Intelligently insert ends, endifs, etc
Plug 'tpope/vim-endwise'

" vim-es6: snippets and syntax highlighting for ECMAScript6/ECMAScript2015
Plug 'vim-scripts/vim-es6'

" Eunuch - Syntax support for git files, ie commit messages
Plug 'tpope/vim-eunuch'

" Fugitive - Interact with git via Vim
Plug 'tpope/vim-fugitive'

" Haml - Syntax support for haml & sass
Plug 'tpope/vim-haml'

" HTML5 - Filetype settings for html5
Plug 'othree/html5.vim'

" IndentLine
Plug 'Yggdroot/indentLine'

" JSON - Syntax highlighting for JSON
Plug 'elzr/vim-json'

" Entire (text obj) - Custom text object for the entire buffer
Plug 'kana/vim-textobj-entire'

" Line - text object for current line
Plug 'kana/vim-textobj-line'

" TextObj User - Provide the ability to define custom textobjs
Plug 'kana/vim-textobj-user'

" Markdown - Syntax file for Markdowm files
Plug 'tpope/vim-markdown'

" Matchit - Extneded % open close pair matching
Plug 'vim-scripts/matchit.zip'

" Mkdir - Mkdir for the current file before save
Plug 'pbrisbin/vim-mkdir'

" Node - Support for `gf` file jumping on node requires
Plug 'moll/vim-node'

" Vim-Pairs - Custom text objects for pairs and quotes
Plug 'kurkale6ka/vim-pairs'

" Allow automatic, and simple manual, toggling of relative/hybrid line numbering
Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Session management
Plug 'tpope/vim-obsession'

" Rails.vim - Help for working with Rails projects in vim
Plug 'tpope/vim-rails'

" Repeat.vim - Enable repeating of supported plugin maps, ie surround.vim
Plug 'tpope/vim-repeat'

" Rfactory - Rapid navigation to FactoryGirl factories ala Rails.vim
Plug 'christoomey/vim-rfactory'

" Ruby Block - Provide a custom text object for ruby blocks
Plug 'nelstrom/vim-textobj-rubyblock'

" Solarized - Colorscheme definition. Dark & light. Nice
Plug 'altercation/vim-colors-solarized'

" Surround - Add, update, remove enclosing marks, ie [], {}. (), "", ''
Plug 'tpope/vim-surround'

" Syntastic - Syntax checking on the fly
Plug 'scrooloose/syntastic'

" System Copy - Motion / text obj aware copy to system clipboard
Plug 'christoomey/vim-system-copy'

" VTR - Vim tmux integration
Plug 'christoomey/vim-tmux-navigator'

" Trailing-Whitespace - Provides a list of buffers for organization
Plug 'bronson/vim-trailing-whitespace'

" Unimpaired - Pairs of mappings thanks to tpope
Plug 'tpope/vim-unimpaired'

" vim-rake: configures vim path to allow file navigation of ruby gems
Plug 'tpope/vim-rake'

" vim-rbenv lets vim know where my ruby installs are
Plug 'tpope/vim-rbenv'

" vim-ruby: part of vim distribution, but having as separate bundle advised
Plug 'vim-ruby/vim-ruby'

" vim-test: multi-platform testing dispatcher
Plug 'janko-m/vim-test'

" vinegar is tim pope's netrw replacement
Plug 'tpope/vim-vinegar'

" vitality makes things play nice with tmux
if !has('nvim')
  Plug 'sjl/vitality.vim'
endif
" YankStack: super-lightwt yankring implementation
Plug 'maxbrunsfeld/vim-yankstack'

" Completion functionality, unifying supertab, ultisnips, and YouCompleteMe
" via http://stackoverflow.com/a/22253548/1626737

Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

call plug#end()

"configure the plugins we just loaded
" Plugins are each listed in their own file. Loop and source ftw
"----------------------------------------------------------------
call s:SourceConfigFilesIn('rcplugins')

" Vimrc is split accross multiple files, so loop over and source each
"---------------------------------------------------------------------
call s:SourceConfigFilesIn('rcfiles')
