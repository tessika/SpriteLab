#!/bin/bash
# Launch script for SpriteLab native binary on Linux/macOS

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if the native binary exists
if [ ! -f "$SCRIPT_DIR/SpriteLab" ]; then
    echo "Error: SpriteLab binary not found in $SCRIPT_DIR"
    exit 1
fi

# Check if FFmpeg binary exists
if [ ! -f "$SCRIPT_DIR/bin/ffmpeg" ]; then
    echo "Warning: FFmpeg binary not found in $SCRIPT_DIR/bin/"
    echo "SpriteLab requires FFmpeg to function properly."
fi

# Make sure the binary is executable
chmod +x "$SCRIPT_DIR/SpriteLab"

# Run SpriteLab native binary
"$SCRIPT_DIR/SpriteLab" "$@"
