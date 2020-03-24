# vim-haproxy

[![Vint](https://github.com/Joorem/vim-haproxy/workflows/Vint/badge.svg)](https://github.com/Joorem/vim-haproxy/actions?workflow=Vint)

This is a Vim plugin that provides [HAProxy][hp] file detection and syntax highlighting (based on [Bruno Michel][bm] work).

## Installation

Use your favorite plugin manager, if you don't yet have one take a look at [vim-plug][plug]. For this plugin to work you need to add some configuration lines to tell Vim to use the syntax and filetype functionality:

```vim
syntax enable
filetype plugin indent on
```

### Pathogen

To install this plugin with [Pathogen][pathogen] just clone this repository to your bundle directory, and ensure you have the line `execute pathogen#infect()` in your `~/.vimrc` file. You can run the following command in your terminal to do so:

```bash
git clone https://github.com/Joorem/vim-haproxy ~/.vim/bundle/vim-haproxy
```

### Vim-Plug

To install this plugin with [vim-plug][plug] just add the following line to your `~/.vimrc` file (between `call plug#begin('~/.vim/plugged')` and `call plug#end()`):

```vim
Plug 'Joorem/vim-haproxy'
```

Then run `:PlugInstall` in Vim (or `vim +PlugInstall +qall` from your terminal).

### Vundle

To install this plugin with [Vundle][vundle] just add the following line to your `~/.vimrc` file (between `call vundle#begin()` and `call vundle#end()`):

```vim
Plugin 'Joorem/vim-haproxy'
```

Then run `:PluginInstall` in Vim (or `vim +PluginInstall +qall` from your terminal).

## License

Because this plugin uses the syntax file provided by [HAProxy][bm], it is distributed under the terms of the *GPLv3* license.

[bm]:https://github.com/haproxy/haproxy/blob/master/contrib/syntax-highlight/haproxy.vim
[hp]:https://www.haproxy.org
[pathogen]:https://github.com/tpope/vim-pathogen
[plug]:https://github.com/junegunn/vim-plug
[vundle]:https://github.com/VundleVim/Vundle.vim
