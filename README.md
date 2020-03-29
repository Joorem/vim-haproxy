<p align="center">
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-gruvbox8.png" alt="gruvbox8" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-palenight.png" alt="palenight" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-sonokai.png" alt="sonokai" width="215px"/>
  <img src="https://github.com/Joorem/vim-haproxy/wiki/img/theme-nord.png" alt="nord" width="215px"/>
</p>

<p align="center">
  <a href="https://github.com/Joorem/vim-haproxy/actions?workflow=Vint" alt="Lint">
    <img src="https://github.com/Joorem/vim-haproxy/workflows/Vint/badge.svg" />
  </a>
  <a href="https://github.com/Joorem/vim-haproxy/releases" alt="GitHub Version">
    <img src="https://badge.fury.io/gh/Joorem%2Fvim-haproxy.svg" />
  </a>
  <a href="https://GitHub.com/Joorem/vim-haproxy/graphs/commit-activity" alt="Maintained">
    <img src="https://img.shields.io/badge/Maintained%3F-yes-green.svg" />
  </a>
  <a href="https://GitHub.com/Joorem/vim-haproxy/issues/" alt="GitHub Issues">
    <img src="https://img.shields.io/github/issues/Joorem/vim-haproxy.svg" />
  </a>
  <a href="LICENSE" alt="GPLv3 License">
    <img src="https://img.shields.io/badge/license-GPLv3-blue.svg" />
  </a>
  <a href="https://gitter.im/vim-haproxy/community" alt="Gitter">
    <img src="https://img.shields.io/gitter/room/Joorem/vim-haproxy.svg" />
  </a>
  <a href="https://twitter.com/intent/tweet?url=https%3A%2F%2Fgithub.com%2FJoorem%2Fvim-haproxy&text=A%20vim%20plugin%20for%20syntax%20highlighting%20HAproxy%20configuration%20file" alt="Tweet">
    <img src="https://img.shields.io/twitter/url/http/shields.io.svg?style=social&logo=twitter" />
  </a>
</p>

# vim-haproxy

This is a Vim plugin that provides [HAProxy][hp] file detection and syntax
highlighting.

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
