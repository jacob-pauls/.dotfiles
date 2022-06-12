" Jake Pauls
" https://jakepauls.dev
" https://github.com/jake-pauls

""
"" Plug
""
call plug#begin('~/.vim/plugged')

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Alpha
Plug 'goolord/alpha-nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'

" LSP Icons
Plug 'onsails/lspkind-nvim'

" Tree + Icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'

" Statusline
Plug 'itchyny/lightline.vim'

" Tabline
Plug 'romgrk/barbar.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Commenting
Plug 'tpope/vim-commentary'

" Characters for Indent Recognition
Plug 'Yggdroot/indentLine'

" Theming
Plug 'arcticicestudio/nord-vim'
Plug 'rmehri01/onenord.nvim'
Plug 'morhetz/gruvbox'

" Transparency
Plug 'miyakogi/seiya.vim'

" C/C++ Syntax Highlighting
Plug 'bfrg/vim-cpp-modern'

" CMake
" Plug 'cdelledonne/vim-cmake'
" Improves performance for neovim CursorHold autocmd events
" Plug 'antoinemadec/FixCursorHold.nvim'

" GLSL
Plug 'tikhomirov/vim-glsl'

" Prettier
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Terminal
Plug 'akinsho/toggleterm.nvim'

" TeX
Plug 'lervag/vimtex'

call plug#end()

" Use space for leader
let mapleader = " "

" NOTE: Hacky way to start alpha by default instead of netrw
let loaded_netrwPlugin = 1
autocmd VimEnter * Alpha

""
"" Lua
""

" alpha-nvim
luafile ~/.config/nvim/plugin/_alpha.lua

" nvim-tree
luafile ~/.config/nvim/plugin/_nvimtree.lua

" telescope
luafile ~/.config/nvim/plugin/_telescope.lua

" Compe (autocompletion, diagnostics, etc.)
luafile ~/.config/nvim/plugin/_compe.lua

" LSP Icons
luafile ~/.config/nvim/plugin/lsp/_kind.lua

" Language Servers
luafile ~/.config/nvim/plugin/lsp/_clangd.lua
luafile ~/.config/nvim/plugin/lsp/_ts.lua
luafile ~/.config/nvim/plugin/lsp/_go.lua
luafile ~/.config/nvim/plugin/lsp/_python.lua
luafile ~/.config/nvim/plugin/lsp/_bash.lua
luafile ~/.config/nvim/plugin/lsp/_rust.lua

" Toggleterm
luafile ~/.config/nvim/plugin/_toggleterm.lua

""
"" Utils
""

" Trim whitespace after saving files
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup CodeQuality
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
