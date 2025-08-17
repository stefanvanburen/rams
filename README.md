# rams

A light colorscheme for Neovim built with [mini.colors](https://github.com/nvim-mini/mini.nvim).

The colors have been migrated from [rams.vim](https://github.com/stefanvanburen/rams.vim),
which originally used [vim-colortemplate](https://github.com/lifepillar/vim-colortemplate).
Previously, this repository used [lush.nvim](https://github.com/rktjmp/lush.nvim) before transitioning to mini.colors.

## Usage

```vim
set termguicolors
" Only light mode is supported for now, see #9
set background=light
colorscheme rams
```

## Supported Plugins

* [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
* [ALE](https://github.com/dense-analysis/ale)
* [fugitive](https://github.com/tpope/vim-fugitive)
* [vim-better-whitespace](https://github.com/ntpeters/vim-better-whitespace)
* [neovim's builtin LSP client (nvim-lsp)](https://neovim.io/doc/user/lsp.html)
* [mason.nvim](https://github.com/williamboman/mason.nvim)
* [mini.trailspace](https://github.com/echasnovski/mini.nvim#minitrailspace)
