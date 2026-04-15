# rams

A minimal colorscheme for Neovim with light and dark modes.

The colors have been migrated from [rams.vim](https://github.com/stefanvanburen/rams.vim),
which originally used [vim-colortemplate](https://github.com/lifepillar/vim-colortemplate).

## Installation

```lua
vim.pack.add({ 'https://github.com/stefanvanburen/rams' })
vim.cmd.colorscheme('rams')
```

## Light and Dark Modes

The colorscheme respects `vim.o.background`. Set it before loading the colorscheme:

```lua
-- For light mode (default)
vim.o.background = 'light'
vim.cmd.colorscheme('rams')

-- For dark mode
vim.o.background = 'dark'
vim.cmd.colorscheme('rams')
```

## Supported Plugins

- [ALE](https://github.com/dense-analysis/ale)
- [fugitive](https://github.com/tpope/vim-fugitive)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [Neovim's builtin LSP client](https://neovim.io/doc/user/lsp.html)
