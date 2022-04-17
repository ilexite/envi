# envi
A neovim config others will envy

## Table of contents
- [Install](#install)
- [Pictures](#pictures)
- [List of plugins](#plugin-list)
- [Startup time](#startup-time)

## Install
To install envi, clone this repository to your neovim config folder:
```bash
git clone --depth=1 https://github.com/ilexite/envi.git \
	${XDG_CONFIG_HOME:-$HOME/.config}/nvim
```
Then, run `nvim` and everything should start installing.

Once installed, restart `nvim` (to make sure all plugins are running) and run
`:checkhealth` and fix any problems.

## Pictures
![envi on startup](https://raw.githubusercontent.com/ilexite/envi/master/.github/img/envi-start.png)
![envi general use](https://raw.githubusercontent.com/ilexite/envi/master/.github/img/envi-webdev.png)

## Plugin list

| Plugin(s)                                                                                                                                            | Function                                                                                                                                                                    |
| ---                                                                                                                                                  | ---                                                                                                                                                                         |
| [Impatient](https://github.com/lewis6991/impatient.nvim)                                                                                             | Speed up startup time by compiling lua to bytecode                                                                                                                          |
| [Filetype](https://github.com/nathom/filetype.nvim)                                                                                                  | Speed up startup time by replacing the slow builtin `filetype.vim` file                                                                                                       |
| [Packer](https://github.com/wbthomason/packer.nvim)                                                                                                  | A plugin manager                                                                                                                                                            |
| [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)                                                                                     | A nicer syntax parser                                                                                                                                                       |
| [Onedark](https://github.com/navarasu/onedark.nvim)                                                                                                  | A theme based on [Atom's One Dark theme](https://github.com/atom/one-dark-syntax)                                                                                           |
| [Feline](https://github.com/nvim-feline/feline.nvim)                                                                                                 | A customizable statusbar                                                                                                                                                    |
| [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)                                                                                              | A file tree                                                                                                                                                                 |
| [Telescope](https://github.com/nvim-telescope/telescope.nvim)                                                                                        | A fuzzy-finder                                                                                                                                                              |
| [Colorizer](https://github.com/norcalli/nvim-colorizer.lua)                                                                                          | Highlights colors in formats: `#RGB`, `#RGBA`, `#RRGGBB`, `#RRGGBBAA`, `rgb(red, green, blue)`, `rgba(red, green, blue, alpha)`, `hsl(hue, saturation, luminance)` and more |
| [TrueZen](https://github.com/pocco81/truezen.nvim)                                                                                                   | Adds a few more viewing styles                                                                                                                                              |
| [GitSigns](https://github.com/lewis6991/gitsigns.nvim)                                                                                               | Adds git VCS signs in the gutter                                                                                                                                            |
| [Matchup](https://github.com/andymass/vim-matchup)                                                                                                   | Extend the functionality of the `%` key                                                                                                                                     |
| [Alpha](https://github.com/goolord/alpha-nvim)                                                                                                       | A customizable start screen                                                                                                                                                 |
| [Comment](https://github.com/numToStr/Comment.nvim)                                                                                                  | Adds `gc` and `gb` binds to comment quicker                                                                                                                                 |
| [Autopairs](https://github.com/windwp/nvim-autopairs), [Autotag](https://github.com/windwp/nvim-ts-autotag)                                          | Automatically pair matching quotes, brackets, and tags                                                                                                                      |
| [SimpleAlign](https://github.com/kg8m/vim-simple-align)                                                                                              | Allows you to align blocks of text                                                                                                                                          |
| [LSPConfig](https://github.com/neovim/nvim-lspconfig)                                                                                                | An implementation of the Language Server Protocol                                                                                                                           |
| [FriendlySnippets](https://github.com/rafamadriz/friendly-snippets)                                                                                  | A collection of snippets                                                                                                                                                    |
| [LuaSnip](https://github.com/L3MON4AD3/LuaSnip)                                                                                                      | A snippet engine                                                                                                                                                            |
| [NvimCMP](https://github.com/hrsh7th/nvim-cmp)                                                                                                       | A completion engine                                                                                                                                                         |
| [CMPLua](https://github.com/hrsh7th/cmp-nvim-lua), [CMPLSP](https://github.com/hrsh7th/cmp-nvim-lsp), [CMPPath](https://github.com/hrsh7th/cmp-path) | Completion sources                                                                                                                                                          |
| [LSPSignature](https://github.com/ray-x/lsp_signature.nvim)                                                                                          | Signatures                                                                                                                                                                  |

## Startup time
On my machine, envi starts in around 76 milliseconds; this may vary and is
subject to change in the future.

