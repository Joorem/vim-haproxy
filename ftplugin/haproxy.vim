" File:        haproxy.vim
" Description: Detect and enable syntax for HAProxy configuration file
" Maintainer:  Jérôme Le Gal <jerome@joworld.net>
" URL:         https://github.com/Joorem/vim-haproxy
" Last Change: 2020 Mar 25
" Version:     0.1.1
" License:     See LICENSE
" Note:        This plugin uses the syntax file created by Bruno Michel <brmichel@free.fr>

scriptencoding utf-8

if exists('b:did_ftplugin')
  finish
else
  let b:did_ftplugin = 1
endif

let s:save_cpo = &cpo
set cpo&vim

setlocal comments=:# commentstring=#\ %s formatoptions-=t formatoptions-=c

let b:undo_ftplugin = 'setl comments< commentstring< formatoptions<'

let &cpo = s:save_cpo
unlet s:save_cpo
