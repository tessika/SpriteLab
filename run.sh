#!/bin/bash
# Launch script for SpriteLab on Linux/macOS

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if Java is installed
if ! command -v java &> /dev/null; then
    echo "Error: Java is not installed or not in PATH."
    echo "Please install Java 21 or higher to run SpriteLab."
    exit 1
fi

# Check if the JAR file exists
if [ ! -f "$SCRIPT_DIR/SpriteLab.jar" ]; then
    echo "Error: SpriteLab.jar not found in $SCRIPT_DIR"
    exit 1
fi

# Check if FFmpeg binary exists
if [ ! -f "$SCRIPT_DIR/bin/ffmpeg" ]; then
    echo "Warning: FFmpeg binary not found in $SCRIPT_DIR/bin/"
    echo "SpriteLab requires FFmpeg to function properly."
fi

# Run SpriteLab with the correct Java version
java -jar "$SCRIPT_DIR/SpriteLab.jar"

