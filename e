#!/usr/bin/zsh
if [ -z "$(pgrep emacs)" ]; then
    #XLIB_SKIP_ARGB_VISUALS=1
   env LC_CTYPE=zh_CN.UTF-8 emacs --daemon
else
    emacsclient -c -n -a="" "$@"
fi
