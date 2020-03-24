" vim-haproxy: detect and enable syntax for HAProxy configuration file
" Last Change:  2020 Mar 24
" Maintainer:   Jérôme Le Gal <jerome@joworld.net>
" URL:          https://github.com/Joorem/vim-haproxy
" License:      See LICENSE

if exists("b:did_ftplugin")
  finish
else
  let b:did_ftplugin = 1
endif

let s:save_cpo = &cpo
set cpo&vim

setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions-=c

let b:undo_ftplugin = "setl comments< commentstring< formatoptions<"

let &cpo = s:save_cpo
unlet s:save_cpo
