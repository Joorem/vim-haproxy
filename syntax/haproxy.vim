" Vim syntax file
" Language:    HAProxy
" Maintainer:  Jérôme Le Gal <jerome@joworld.net>
" URL:         https://github.com/Joorem/vim-haproxy
" Last Change: 2020 Mar 25
" Version:     0.1.1

if exists('b:current_syntax')
  finish
endif
let b:current_syntax = 'haproxy'

set iskeyword=_,-,.,a-z,A-Z,48-57

" Generic match
syntax keyword hapBool           contained on off
syntax match   hapComment        /\v#.*$/
syntax keyword hapCondition      contained if unless                                        skipwhite nextgroup=hapConditionValue
syntax match   hapConditionValue contained /\v.+/
syntax match   hapGroup          contained /\v[a-z_]([a-z0-9_-]{0,15}|[a-z0-9_-]{0,14}\$)$/ skipwhite nextgroup=hapUsers
syntax keyword hapLen            contained len                                              skipwhite nextgroup=hapNumber
syntax match   hapNode           contained /\v(\w|-)+/
syntax match   hapNumber         contained /\v\d+/
syntax match   hapHttpHeader     contained /\v[a-zA-Z0-9-]+/                                skipwhite nextgroup=hapLen
syntax keyword hapSection        global defaults
syntax keyword hapSection        backend cache fcgi-app frontend http-errors listen mailers peers program resolvers userlist skipwhite nextgroup=hapSectionName
syntax match   hapSectionName    contained /\v(\w|-|:|\.)+/
syntax match   hapStatus         contained /\v\d{3}/
syntax match   hapTimeout        contained /\v\d+(us|ms|s|m|h|d)?/
syntax match   hapUser           contained /\v[a-z_]([a-z0-9_-]{0,31}|[a-z0-9_-]{0,30}\$)$/
syntax keyword hapUsers          users                                                      skipwhite nextgroup=hapUsersList
syntax match   hapUsersList      contained /\v([a-z_]([a-z0-9_-]{0,31}|[a-z0-9_-]{0,30}\$),?)+$/
" These regular expressions where taken and adapted from:
" https://github.com/chr4/nginx.vim/blob/master/syntax/nginx.vim
" http://vim.1045645.n5.nabble.com/IPv6-support-for-quot-dns-quot-zonefile-syntax-highlighting-td1197292.html
syntax match   hapIPaddr         contained /\v([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2}(:\d{2,5})?/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){6}(\x{1,4}:\x{1,4}|([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v::((\x{1,4}:){,6}\x{1,4}|(\x{1,4}:){,5}([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){1}:((\x{1,4}:){,5}\x{1,4}|(\x{1,4}:){,4}([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){2}:((\x{1,4}:){,4}\x{1,4}|(\x{1,4}:){,3}([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){3}:((\x{1,4}:){,3}\x{1,4}|(\x{1,4}:){,2}([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){4}:((\x{1,4}:){,2}\x{1,4}|(\x{1,4}:){,1}([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){5}:((\x{1,4}:){,1}\x{1,4}|([0-2]?\d{1,2}\.){3}[0-2]?\d{1,2})/
syntax match   hapIPaddr         contained /\v(\x{1,4}:){6}:\x{1,4}/


"
" Global parameters
"
syntax keyword hapParam busy-polling
syntax keyword hapParam ca-base
syntax keyword hapParam chroot
syntax keyword hapParam crt-base
syntax keyword hapParam cpu-map
syntax keyword hapParam daemon
syntax keyword hapParam debug
syntax keyword hapParam description
syntax keyword hapParam deviceatlas-json-file
syntax keyword hapParam deviceatlas-log-level
syntax keyword hapParam deviceatlas-separator
syntax keyword hapParam deviceatlas-properties-cookie
syntax keyword hapParam external-check
syntax keyword hapParam gid                              skipwhite nextgroup=hapNumber
syntax keyword hapParam group                            skipwhite nextgroup=hapGroup
syntax keyword hapParam hard-stop-after                  skipwhite nextgroup=hapTimeout
syntax keyword hapParam h1-case-adjust
syntax keyword hapParam h1-case-adjust-file
syntax keyword hapParam insecure-fork-wanted
syntax keyword hapParam insecure-setuid-wanted
syntax keyword hapParam issuers-chain-path
syntax keyword hapParam log                              skipwhite nextgroup=hapLogGlobal,hapIPaddr
syntax keyword hapParam log-tag
syntax keyword hapParam log-send-hostname
syntax keyword hapParam lua-load
syntax keyword hapParam lua-prepend-path
syntax keyword hapParam master-worker                    skipwhite nextgroup=hapMwParam
syntax keyword hapParam max-spread-checks                skipwhite nextgroup=hapNumber
syntax keyword hapParam maxconn                          skipwhite nextgroup=hapNumber
syntax keyword hapParam maxconnrate                      skipwhite nextgroup=hapNumber
syntax keyword hapParam maxcomprate                      skipwhite nextgroup=hapNumber
syntax keyword hapParam maxcompcpuusage                  skipwhite nextgroup=hapNumber
syntax keyword hapParam maxpipes                         skipwhite nextgroup=hapNumber
syntax keyword hapParam maxsessrate                      skipwhite nextgroup=hapNumber
syntax keyword hapParam maxsslconn                       skipwhite nextgroup=hapNumber
syntax keyword hapParam maxsslrate                       skipwhite nextgroup=hapNumber
syntax keyword hapParam maxzlibmem                       skipwhite nextgroup=hapNumber
syntax keyword hapParam mworker-max-reloads              skipwhite nextgroup=hapNumber
syntax keyword hapParam nbproc                           skipwhite nextgroup=hapNumber
syntax keyword hapParam nbthread                         skipwhite nextgroup=hapNumber
syntax keyword hapParam noepoll
syntax keyword hapParam node                             skipwhite nextgroup=hapNode
syntax keyword hapParam nokqueue
syntax keyword hapParam noevports
syntax keyword hapParam nopoll
syntax keyword hapParam nosplice
syntax keyword hapParam nogetaddrinfo
syntax keyword hapParam noreuseport
syntax keyword hapParam pidfile
syntax keyword hapParam presetenv
syntax keyword hapParam profiling.tasks                  skipwhite nextgroup=hapProfTask
syntax keyword hapParam quiet
syntax keyword hapParam resetenv
syntax match   hapParam /\v<stats\sbind-process>/        skipwhite nextgroup=hapBindProcess
syntax keyword hapParam uid                              skipwhite nextgroup=hapNumber
syntax keyword hapParam ulimit-n                         skipwhite nextgroup=hapNumber
syntax keyword hapParam user                             skipwhite nextgroup=hapUser
syntax keyword hapParam set-dumpable
syntax keyword hapParam setenv
syntax keyword hapParam server-state-base
syntax keyword hapParam server-state-file
syntax keyword hapParam spread-checks
syntax keyword hapParam ssl-engine
syntax keyword hapParam ssl-default-bind-ciphers         skipwhite nextgroup=hapCiphers
syntax keyword hapParam ssl-default-bind-ciphersuites
syntax keyword hapParam ssl-default-bind-options
syntax keyword hapParam ssl-default-server-ciphers
syntax keyword hapParam ssl-default-server-ciphersuites
syntax keyword hapParam ssl-default-server-options
syntax keyword hapParam ssl-dh-param-file
syntax keyword hapParam ssl-load-extra-files             skipwhite nextgroup=hapSslExtra
syntax keyword hapParam ssl-mode-async
syntax keyword hapParam ssl-server-verify                skipwhite nextgroup=hapSslVerify
syntax match   hapParam /\v<stats\ssocket>/              skipwhite nextgroup=hapIPandPort
syntax match   hapParam /\v<stats\stimeout>/             skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<stats\smaxconn>/             skipwhite nextgroup=hapTimeout
syntax keyword hapParam strict-limits
syntax keyword hapParam tune.buffers.limit               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.buffers.reserve             skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.bufsize                     skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.chksize                     skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.comp.maxlevel               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.fail-alloc
syntax keyword hapParam tune.h2.header-table-size        skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.h2.initial-window-size      skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.h2.max-concurrent-streams   skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.http.cookielen              skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.http.logurilen              skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.http.maxhdr                 skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.idletimer                   skipwhite nextgroup=hapTimeout
syntax keyword hapParam tune.listener.multi-queue        skipwhite nextgroup=hapBool
syntax keyword hapParam tune.lua.forced-yield            skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.lua.maxmem
syntax keyword hapParam tune.lua.session-timeout         skipwhite nextgroup=hapTimeout
syntax keyword hapParam tune.lua.task-timeout            skipwhite nextgroup=hapTimeout
syntax keyword hapParam tune.lua.service-timeout         skipwhite nextgroup=hapTimeout
syntax keyword hapParam tune.maxaccept                   skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.maxpollevents               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.maxrewrite                  skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.pattern.cache-size          skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.pipesize                    skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.rcvbuf.client               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.rcvbuf.server               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.recv_enough                 skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.runqueue-depth              skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.sndbuf.client               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.sndbuf.server               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.ssl.cachesize               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.ssl.lifetime                skipwhite nextgroup=hapTimeout
syntax keyword hapParam tune.ssl.force-private-cache
syntax keyword hapParam tune.ssl.maxrecord               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.ssl.default-dh-param        skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.ssl.ssl-ctx-cache-size      skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.ssl.capture-cipherlist-size skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.vars.global-max-size        skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.vars.proc-max-size          skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.vars.reqres-max-size        skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.vars.sess-max-size          skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.vars.txn-max-size           skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.zlib.memlevel               skipwhite nextgroup=hapNumber
syntax keyword hapParam tune.zlib.windowsize             skipwhite nextgroup=hapNumber
syntax keyword hapParam unix-bind
syntax keyword hapParam unsetenv
syntax keyword hapParam wurfl-data-file
syntax keyword hapParam wurfl-information-list
syntax keyword hapParam wurfl-information-list-separator
syntax keyword hapParam wurfl-cache-size                 skipwhite nextgroup=hapNumber
syntax keyword hapParam 51degrees-data-file
syntax keyword hapParam 51degrees-property-name-list
syntax keyword hapParam 51degrees-property-separator
syntax keyword hapParam 51degrees-cache-size             skipwhite nextgroup=hapNumber
" Values
syntax match   hapCiphers   contained /\v\S+/
syntax keyword hapLogGlobal         contained global
syntax keyword hapMwParam   contained no-exit-on-failure
syntax keyword hapProfTask  contained auto on off
syntax match   hapSslExtra  contained /\v(\s?(none|all|bundle|sctl|ocsp|issuer|key))+/
syntax keyword hapSslVerify contained none required

"
" Proxy parameters
"
syntax keyword hapParam acl
syntax keyword hapParam backlog                          skipwhite nextgroup=hapNumber
syntax keyword hapParam balance                          skipwhite nextgroup=hapBalAlgos
syntax keyword hapBalAlgos contained roundrobin static-rr leastconn first source uri url_param random rdp-cookie
syntax keyword hapParam bind                             skipwhite nextgroup=hapIPaddr
syntax keyword hapParam bind-process                     skipwhite nextgroup=hapBindProcess
syntax match   hapBindProcess contained /\v(all|odd|even|\d+(-\d+)?)>/
syntax match   hapParam /\v<capture cookie>/             skipwhite nextgroup=hapCookieName
syntax match   hapParam /\v<capture request header>/     skipwhite nextgroup=hapHttpHeader
syntax match   hapParam /\v<capture response header>/    skipwhite nextgroup=hapHttpHeader
syntax match   hapParam /\v<compression algo>/           skipwhite nextgroup=hapCompAlgos
syntax match   hapParam /\v<compression type>/           skipwhite nextgroup=hapCompAlgos
syntax match   hapParam /\v<compression offload>/
syntax keyword hapParam cookie
syntax match   hapParam /\v<declare capture>/            skipwhite nextgroup=hapCaptureType,hapLen
syntax keyword hapCaptureType contained request response skipwhite nextgroup=hapLen
syntax keyword hapParam default-server
syntax keyword hapParam default_backend
syntax keyword hapParam description
syntax keyword hapParam disabled
syntax keyword hapParam dispatch
syntax match   hapParam /\v<email-alert from>/
syntax match   hapParam /\v<email-alert level>/
syntax match   hapParam /\v<email-alert mailers>/
syntax match   hapParam /\v<email-alert myhostname>/
syntax match   hapParam /\v<email-alert to>/
syntax keyword hapParam enabled
syntax keyword hapParam errorfile                        skipwhite nextgroup=hapStatus
syntax keyword hapParam errorfiles
syntax keyword hapParam errorloc                         skipwhite nextgroup=hapHttpCode
syntax keyword hapParam errorloc302                      skipwhite nextgroup=hapHttpCode
syntax keyword hapParam errorloc303                      skipwhite nextgroup=hapHttpCode
syntax keyword hapParam force-persist                    skipwhite nextgroup=hapCondition
syntax keyword hapParam filter
syntax keyword hapParam fullconn                         skipwhite nextgroup=hapNumber
syntax keyword hapParam grace                            skipwhite nextgroup=hapTimeout
syntax keyword hapParam hash-type                        skipwhite nextgroup=hapHashMethod
syntax keyword hapParam http-after-response              skipwhite nextgroup=hapHttpAfterResponse
syntax match   hapParam /\v<http-check disable-on-404>/
syntax match   hapParam /\v<http-check expect>/
syntax match   hapParam /\v<http-check send-state>/
syntax keyword hapParam http-request                     skipwhite nextgroup=hapHttpReq
syntax keyword hapParam http-response
syntax keyword hapParam http-reuse
syntax keyword hapParam http-send-name-header
syntax keyword hapParam id                               skipwhite nextgroup=hapNumber
syntax keyword hapParam ignore-persist
syntax keyword hapParam load-server-state-from-file      skipwhite nextgroup=hapLoadSrvFrom
syntax keyword hapParam log-format
syntax keyword hapParam log-format-sd
syntax keyword hapParam log-tag
syntax keyword hapParam max-keep-alive-queue
syntax keyword hapParam mode                             skipwhite nextgroup=hapMode
syntax match   hapParam /\v<monitor fail>/
syntax keyword hapParam monitor-net
syntax keyword hapParam monitor-uri
syntax match   hapParam /\v(no )?<option abortonclose>/
syntax match   hapParam /\v(no )?<option accept-invalid-http-request>/
syntax match   hapParam /\v(no )?<option accept-invalid-http-response>/
syntax match   hapParam /\v(no )?<option allbackups>/
syntax match   hapParam /\v(no )?<option checkcache>/
syntax match   hapParam /\v(no )?<option clitcpka>/
syntax match   hapParam /\v<option contstats>/
syntax match   hapParam /\v(no )?<option dontlog-normal>/
syntax match   hapParam /\v(no )?<option dontlognull>/
syntax match   hapParam /\v<option forwardfor>/
syntax match   hapParam /\v(no )?<option h1-case-adjust-bogus-client>/
syntax match   hapParam /\v(no )?<option h1-case-adjust-bogus-server>/
syntax match   hapParam /\v(no )?<option http-buffer-request>/
syntax match   hapParam /\v(no )?<option http-ignore-probes>/
syntax match   hapParam /\v(no )?<option http-keep-alive>/
syntax match   hapParam /\v(no )?<option http-no-delay>/
syntax match   hapParam /\v(no )?<option http-pretend-keepalive>/
syntax match   hapParam /\v(no )?<option http-server-close>/
syntax match   hapParam /\v(no )?<option http-use-proxy-header>/
syntax match   hapParam /\v<option httpchk>/
syntax match   hapParam /\v(no )?<option httpclose>/
syntax match   hapParam /\v<option httplog>/
syntax match   hapParam /\v(no )?<option http_proxy>/
syntax match   hapParam /\v(no )?<option independent-streams>/
syntax match   hapParam /\v<option ldap-check>/
syntax match   hapParam /\v<option external-check>/
syntax match   hapParam /\v(no )?<option log-health-checks>/
syntax match   hapParam /\v(no )?<option log-separate-errors>/
syntax match   hapParam /\v(no )?<option logasap>/
syntax match   hapParam /\v<option mysql-check>/
syntax match   hapParam /\v(no )?<option nolinger>/
syntax match   hapParam /\v<option originalto>/
syntax match   hapParam /\v(no )?<option persist>/
syntax match   hapParam /\v<option pgsql-check>/
syntax match   hapParam /\v(no )?<option prefer-last-server>/
syntax match   hapParam /\v(no )?<option redispatch>/
syntax match   hapParam /\v<option redis-check>/
syntax match   hapParam /\v<option smtpchk>/
syntax match   hapParam /\v(no )?<option socket-stats>/
syntax match   hapParam /\v(no )?<option splice-auto>/
syntax match   hapParam /\v(no )?<option splice-request>/
syntax match   hapParam /\v(no )?<option splice-response>/
syntax match   hapParam /\v<option spop-check>/
syntax match   hapParam /\v<option srvtcpka>/
syntax match   hapParam /\v<option ssl-hello-chk>/
syntax match   hapParam /\v<option tcp-check>/
syntax match   hapParam /\v(no )?<option tcp-smart-accept>/
syntax match   hapParam /\v(no )?<option tcp-smart-connect>/
syntax match   hapParam /\v<option tcpka>/
syntax match   hapParam /\v<option tcplog>/
syntax match   hapParam /\v<option transparent>/
syntax keyword hapParam external-check command
syntax keyword hapParam external-check path
syntax match   hapParam /\v<persist rdp-cookie>/
syntax match   hapParam /\v<rate-limit sessions>/
syntax keyword hapParam redirect
syntax keyword hapParam retries                                     skipwhite nextgroup=hapNumber
syntax keyword hapParam retry-on                                    skipwhite nextgroup=hapRetryOn
syntax keyword hapParam server                                      skipwhite nextgroup=hapSrvName
syntax keyword hapParam server-state-file-name
syntax keyword hapParam server-template                             skipwhite nextgroup=hapSrvTplPrefix
syntax keyword hapParam source                                      skipwhite nextgroup=hapIPaddr
syntax match   hapParam /\v<stats admin>/                           skipwhite nextgroup=hapCondition
syntax match   hapParam /\v<stats auth>/
syntax match   hapParam /\v<stats enable>/
syntax match   hapParam /\v<stats hide-version>/
syntax match   hapParam /\v<stats http-request>/
syntax match   hapParam /\v<stats realm>/
syntax match   hapParam /\v<stats refresh>/                         skipwhite nextgroup=hapNumber
syntax match   hapParam /\v<stats scope>/
syntax match   hapParam /\v<stats show-desc>/
syntax match   hapParam /\v<stats show-legends>/
syntax match   hapParam /\v<stats show-node>/
syntax match   hapParam /\v<stats uri>/
syntax match   hapParam /\v<stick match>/
syntax match   hapParam /\v<stick on>/
syntax match   hapParam /\v<stick store-request>/
syntax match   hapParam /\v<stick store-response>/
syntax keyword hapParam stick-table
syntax match   hapParam /\v<tcp-check connect>/
syntax match   hapParam /\v<tcp-check expect>/
syntax match   hapParam /\v<tcp-check send>/
syntax match   hapParam /\v<tcp-check send-binary>/
syntax match   hapParam /\v<tcp-request connection>/
syntax match   hapParam /\v<tcp-request content>/
syntax match   hapParam /\v<tcp-request inspect-delay>/
syntax match   hapParam /\v<tcp-request session>/
syntax match   hapParam /\v<tcp-response content>/
syntax match   hapParam /\v<tcp-response inspect-delay>/
syntax match   hapParam /\v<timeout check>/                         skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout client>/                        skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout client-fin>/                    skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout connect>/                       skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout http-keep-alive>/               skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout http-request>/                  skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout queue>/                         skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout server>/                        skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout server-fin>/                    skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout tarpit>/                        skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout tunnel>/                        skipwhite nextgroup=hapTimeout
syntax keyword hapParam unique-id-format
syntax keyword hapParam unique-id-header                            skipwhite nextgroup=hapHttpHeader
syntax keyword hapParam use_backend
syntax keyword hapParam use-fcgi-app                                skipwhite nextgroup=hapSectionName
syntax keyword hapParam use-server                                  skipwhite nextgroup=hapSrvName
" Values
syntax match   hapCookieName        contained /\v\S+/               skipwhite nextgroup=hapLen
syntax match   hapCompAlgos         contained /\v(\s?(identity|gzip|deflate|raw-deflate))+/
syntax keyword hapHashFunction      contained sdbm djb2 wt6 crc32   skipwhite nextgroup=hapHashModifier
syntax keyword hapHashMethod        contained map-based consistent  skipwhite nextgroup=hapHashFunction
syntax keyword hapHashModifier      contained avalanche
syntax keyword hapHttpAfterResponse contained add-header allow del-header replace-header replace-value set-header set-status set-var strict-mode unset-var
syntax keyword hapHttpCode          contained 200 400 403 404 405 408 410 425 429 500 502 503 504
syntax keyword hapHttpReq           contained add-acl add-header auth allow cache-use capture del-acl
syntax keyword hapHttpReq           contained del-header del-map deny disable-l7-retry do-resolve
syntax keyword hapHttpReq           contained early-hint redirect reject replace-header replace-path
syntax keyword hapLoadSrvFrom       contained global local none
syntax keyword hapMode              contained http tcp health
syntax keyword hapRetryOn           contained none conn-failure empty-response junk-response response-timeout 0rtt-rejected all-retryable-errors 404 408 425 500 501 502 503 504
syntax match   hapSrvName           contained /\v(\w|-|\.)+/        skipwhite nextgroup=hapCondition,hapIPaddr
syntax match   hapSrvTplPrefix      contained /\v\w+/               skipwhite nextgroup=hapSrvTplRange
syntax match   hapSrvTplRange       contained /\v\d+(-\d+)?/        skipwhite nextgroup=hapFqdn
syntax match   hapFqdn              contained /\v\S+/


"
" Resolver section
"
syntax keyword hapParam nameserver                                  skipwhite nextgroup=hapNameSrvName
syntax keyword hapParam parse-resolv-conf
syntax keyword hapParam resolve_retries                             skipwhite nextgroup=hapNumber
syntax match   hapParam /\v<timeout resolve>/                       skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<timeout retry>/                         skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold other>/                            skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold refused>/                          skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold nx>/                               skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold timeout>/                          skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold valid>/                            skipwhite nextgroup=hapTimeout
syntax match   hapParam /\v<hold obsolete>/                         skipwhite nextgroup=hapTimeout
" Values
syntax match   hapNameSrvName contained /\v(\w|-|\.)+/              skipwhite nextgroup=hapIPaddr


"
" Cache section
"
syntax keyword hapParam total-max-size                              skipwhite nextgroup=hapNumber
syntax keyword hapParam max-object-size                             skipwhite nextgroup=hapNumber
syntax keyword hapParam max-age                                     skipwhite nextgroup=hapNumber


"
" Fcgi-app section
"
syntax keyword hapParam log-stderr
syntax match   hapParam /\v<log-stderr global>/
syntax keyword hapParam acl
syntax keyword hapParam docroot
syntax keyword hapParam index
syntax keyword hapParam pass-header
syntax keyword hapParam path-info
syntax match   hapParam /\v(no )?<option get-values>/
syntax match   hapParam /\v(no )?<option keep-conn>/
syntax match   hapParam /\v<option max-reqs>/                       skipwhite nextgroup=hapNumber
syntax match   hapParam /\v(no )?<option mpxs-conns>/
syntax keyword hapParam set-param


"
" Mailers section
"

" Parameters
syntax keyword hapParam mailer                                      skipwhite nextgroup=hapMailerName
syntax match   hapParam /\v<timeout mail>/                          skipwhite nextgroup=hapTimeout
" Values
syntax match   hapMailerName        contained /\v(\w|-|\.)+/        skipwhite nextgroup=hapIPaddr


"
" Peer section
"
syntax keyword hapParam peer                                        skipwhite nextgroup=hapPeerName
syntax match   hapPeerName          contained /\v(\w|-|\.)+/        skipwhite nextgroup=hapIPaddr


"
" Program section
"
syntax keyword hapParam command
syntax match   hapParam /\v(no )?<option start-on-reload>/


"
" Highlight
"

" orange:      StorageClass
" yellow:      Type
" blue:        Identifier
" red:         Keyword
" green light: Function
" green:       PreProc
" purple:      Number

" Comments
highlight link hapComment           Comment

" IP Address
highlight link hapIPaddr            Identifier
highlight link hapIPandPort         hapIPaddr

" Sections
highlight link hapSection           Keyword

" Names
highlight link hapMailerName        Function
highlight link hapPeerName          hapMailerName
highlight link hapNameSrvName       hapMailerName
highlight link hapSectionName       hapMailerName
highlight link hapSrvName           hapMailerName

" Parameters
highlight link hapParam             Type
highlight link hapCondition         hapParam
highlight link hapHttpAfterResponse hapParam
highlight link hapLen               hapParam
highlight link hapUsers             hapParam

" User specified values for parameters
highlight link hapCiphers           PreProc
highlight link hapFqdn              hapCiphers
highlight link hapNumber            hapCiphers
highlight link hapConditionValue    hapCiphers
highlight link hapCookieName        hapCiphers
highlight link hapTimeout           hapCiphers
highlight link hapUser              hapCiphers
highlight link hapGroup             hapCiphers
highlight link hapNode              hapCiphers
highlight link hapUsersList         hapCiphers
highlight link hapHttpHeader        hapCiphers
highlight link hapSrvTplPrefix      hapCiphers
highlight link hapSrvTplRange       hapCiphers

" HAProxy pre-defined values for parameters
highlight link hapBool              Number
highlight link hapBalAlgos          hapBool
highlight link hapBindProcess       hapBool
highlight link hapCaptureType       hapBool
highlight link hapCompAlgos         hapBool
highlight link hapHashMethod        hapBool
highlight link hapHashModifier      hapBool
highlight link hapHashFunction      hapBool
highlight link hapHttpCode          hapBool
highlight link hapHttpReq           hapBool
highlight link hapOption            hapBool
highlight link hapStatus            hapBool
highlight link hapLoadSrvFrom       hapBool
highlight link hapLogGlobal         hapBool
highlight link hapMode              hapBool
highlight link hapMwParam           hapBool
highlight link hapProfTask          hapBool
highlight link hapSslExtra          hapBool
highlight link hapSslVerify         hapBool
