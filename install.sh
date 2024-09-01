#!/bin/bash
# Alacritty Configs Installations

if [[ ! -v XDG_CONFIG_HOME ]]; then
    echo "XDG_CONFIG_HOME is not set. Please set XDG_CONFIG_HOME"
    exit 1;
fi

ALACRITTY_DIR="$XDG_CONFIG_HOME/alacritty"
if [ ! -d "$ALACRITTY_DIR" ]; then
    echo "Creating alacritty config directory at $ALACRITTY_DIR"
    mkdir -p "$ALACRITTY_DIR"
fi

cp "alacritty.toml" "$ALACRITTY_DIR/" 

echo "Installation complete."
exit 0
