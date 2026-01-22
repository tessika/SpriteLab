#!/bin/bash
# Launch script for SpriteLab on Linux/macOS

# Get the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Run SpriteLab with the correct Java version
java -jar "$SCRIPT_DIR/SpriteLab.jar"
