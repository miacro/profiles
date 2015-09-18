#!/bin/sh

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#ibus-daemon -d -x
#export LANG=zh_CN.UTF-8
#LANG="en_US.UTF-8"

fcitx &
kmix &
#sogou-qimpanel &
