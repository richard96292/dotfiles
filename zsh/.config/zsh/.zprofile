# launch sway only on first tty and if it is actually installed
if hash sway 2>/dev/null && [[ -z $DISPLAY && "$(tty)" = "/dev/tty1" ]]; then
  # the variable are exported in the sway config as well
  export XDG_CURRENT_DESKTOP=sway _JAVA_AWT_WM_NONREPARENTING=1 QT_QPA_PLATFORMTHEME=qt5ct
  exec sway 
fi
