# vim-haproxy

[![Vint](https://github.com/Joorem/vim-haproxy/workflows/Vint/badge.svg)](https://github.com/Joorem/vim-haproxy/actions?workflow=Vint)
[![GitHub version](https://badge.fury.io/gh/Joorem%2Fvim-haproxy.svg)](https://github.com/Joorem/vim-haproxy)
[![Gitter](https://img.shields.io/gitter/room/TechnologyAdvice/Stardust.svg)](https://gitter.im/vim-haproxy/community)
[![Tweet][twitter_badge]][twitter_url]

This is a Vim plugin that provides [HAProxy][hp] file detection and syntax
highlighting.

## Screenshots

<p align="center">
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-deus.png" alt="deus" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-palenight.png" alt="palenight" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-sonokai.png" alt="sonokai" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-nord.png" alt="nord" width="215px"/>
</p>

## Installation

Use your favorite plugin manager, if you don't yet have one take a look at
[vim-plug][plug]. For this plugin to work you need to add some configuration
lines to tell Vim to use the syntax and filetype functionalities:

```vim
syntax enable
filetype plugin indent on
```

### Pathogen

To install this plugin with [Pathogen][pathogen] just clone this repository to
your bundle directory, and ensure you have the line `execute pathogen#infect()`
in your `~/.vimrc` file. You can run the following command in your terminal to
do so:

```bash
git clone https://github.com/Joorem/vim-haproxy ~/.vim/bundle/vim-haproxy
```

### Plug

To install this plugin with [vim-plug][plug] just add the following line to
your `~/.vimrc` file:

```vim
Plug 'Joorem/vim-haproxy'
```

Then run `:PlugInstall` in Vim or `$ vim +PlugInstall +qall`.

### Vundle

To install this plugin with [Vundle][vundle] just add the following line to your
`~/.vimrc` file:

```vim
Plugin 'Joorem/vim-haproxy'
```

Then run `:PluginInstall` in Vim or `$ vim +PluginInstall +qall`.

## Need help?

If you have any problem using this plugin please let me know by opening a new [issue][issue].

## Code of Conduct

See the [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) file.

## License

See the [LICENSE](LICENSE) file.

[issue]:https://github.com/Joorem/vim-haproxy/issues/new/choose
[hp]:https://www.haproxy.org
[pathogen]:https://github.com/tpope/vim-pathogen
[plug]:https://github.com/junegunn/vim-plug
[twitter_badge]:https://img.shields.io/twitter/url/http/shields.io.svg?style=social&logo=twitter
[twitter_url]:https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2FJoorem%2Fvim-haproxy&text=A%20vim%20plugin%20for%20syntax%20highlighting%20HAproxy%20configuration%20file
[vundle]:https://github.com/VundleVim/Vundle.vim
