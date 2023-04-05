export ENV="$HOME/.ashrc"
. "$HOME/.cargo/env"

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export MOZ_ENABLE_WAYLAND=1
fi

if test -z "$XDG_RUNTIME_DIR"; then
    export XDG_RUNTIME_DIR=/tmp/$(id -u)-rt-dir
    if ! test -d "$XDG_RUNTIME_DIR"; then
        mkdir -p "$XDG_RUNTIME_DIR"
        chmod 0700 "$XDG_RUNTIME_DIR"
    fi
fi

[ "$(tty)" == "/dev/tty1" ] && sway
