if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then 
    export QT_QPA_PLATFORM=wayland
    export QT_STYLE_OVERRIDE=kvantum
    export MOZ_ENABLE_WAYLAND=1
    export MOZ_WEBRENDER=1
    export XDG_SESSION_TYPE=wayland
    export XDG_CURRENT_DESKTOP=sway    
    export _JAVA_AWT_WM_NONREPARENTING=1
    exec sway
fi
