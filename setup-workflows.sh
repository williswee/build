#!/bin/bash

# Get the absolute path of this script's directory (the Master Library)
SOURCE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TARGET_DIR=$(pwd)

echo "🔗 Linking Antigravity workflows to $TARGET_DIR..."

# 1. Setup Antigravity / Claude Code (Standard workflows)
mkdir -p "$TARGET_DIR/.agent/workflows"
for file in "$SOURCE_DIR/.agent/workflows"/*.md; do
    filename=$(basename "$file")
    ln -sf "$file" "$TARGET_DIR/.agent/workflows/$filename"
done

# 2. Setup Cursor (Optionally link to .cursor/ too if you use certain plugins)
mkdir -p "$TARGET_DIR/.cursor"
# Optional: Link the commands folder so Cursor can index them easily
ln -sfn "$SOURCE_DIR/commands" "$TARGET_DIR/.cursor/prompt-library"

echo "✅ Done! You now have / commands available in this project."
echo "Updates to the master files at $SOURCE_DIR will reflect here automatically."
