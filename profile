export ENV="$HOME/.ashrc"
. "$HOME/.cargo/env"

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

FREETYPE_PROPERTIES="truetype:interpreter-version=35"
GTK_OVERLAY_SCROLLING=0
GT_QPA_PLATFORMTHEME=gtk2

if test -z "$XDG_RUNTIME_DIR"; then
    export XDG_RUNTIME_DIR=/tmp/$(id -u)-rt-dir
    if ! test -d "$XDG_RUNTIME_DIR"; then
        mkdir -p "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    fi
fi
