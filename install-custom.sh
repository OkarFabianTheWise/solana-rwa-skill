#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="solana-rwa"

echo "Select install location:"
echo "1) Personal ~/.claude/skills"
echo "2) Current project .claude/skills"
echo "3) Cancel"
read -r choice

case "$choice" in
  1)
    BASE="$HOME/.claude/skills"
    ;;
  2)
    BASE="$(pwd)/.claude/skills"
    ;;
  3)
    echo "Cancelled"
    exit 0
    ;;
  *)
    echo "Invalid choice"
    exit 1
    ;;
esac

TARGET_DIR="$BASE/$SKILL_NAME"
mkdir -p "$TARGET_DIR"

for item in "$SCRIPT_DIR"/*; do
  base="$(basename "$item")"
  if [ "$base" != ".git" ] && [ "$base" != ".github" ]; then
    cp -R "$item" "$TARGET_DIR/"
  fi
done

echo "Installed to $TARGET_DIR"
