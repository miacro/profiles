#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources 
eval "$(dbus-launch --sh-syntax --exit-with-session)"

export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
#fcitx
#export GTK_IM_MODULE=ibus
#export XMODIFIERS=@im=ibus
#export QT_IM_MODULE=ibus
#ibus-daemon -d -x
#export LANG=zh_CN.UTF-8
#LANG="en_US.UTF-8"

#fqaq-conky &
fqaq-sslocal.sh
fcitx &
kmix &
exec ck-launch-session dbus-launch --sh-syntax --exit-with-session awesome
# exec enlightenment_start
# exec gnome-session
# exec startkde 
# exec startxfce4
# exec awesome
# exec startlxde
# exec startfluxbox 
# exec ck-launch-session dbus-launch --sh-syntax --exit-with-session fvwm
