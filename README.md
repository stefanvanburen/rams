# rams

A colorscheme for neovim (and maybe, eventually, more?).

For now, the colors have been migrated from [rams.vim](https://github.com/stefanvanburen/rams.vim),
which used [vim-colortemplate](https://github.com/lifepillar/vim-colortemplate),
to this repository,
which is using [lush.nvim](https://github.com/rktjmp/lush.nvim).

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "stefanvanburen/rams",
  lazy = false,
  priority = 1000,
  dependencies = {
    "rktjmp/lush.nvim",
  },
  config = function()
    vim.cmd([[colorscheme rams]])
  end,
}
```

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
