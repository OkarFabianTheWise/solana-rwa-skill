#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="solana-rwa"
SKILLS_DIR="$HOME/.claude/skills"
TARGET_DIR="$SKILLS_DIR/$SKILL_NAME"
CLAUDE_MD_PATH="$HOME/.claude/CLAUDE.md"

echo "Installing $SKILL_NAME..."
mkdir -p "$SKILLS_DIR"
mkdir -p "$HOME/.claude"

if [ -d "$TARGET_DIR" ]; then
  rm -rf "$TARGET_DIR"
fi

mkdir -p "$TARGET_DIR"
for item in "$SCRIPT_DIR"/*; do
  base="$(basename "$item")"
  if [ "$base" != ".git" ] && [ "$base" != ".github" ]; then
    cp -R "$item" "$TARGET_DIR/"
  fi
done

if [ -f "$CLAUDE_MD_PATH" ]; then
  cp "$CLAUDE_MD_PATH" "$CLAUDE_MD_PATH.backup"
fi

cp "$SCRIPT_DIR/CLAUDE.md" "$CLAUDE_MD_PATH"

echo "Installed to $TARGET_DIR"
echo "Updated $CLAUDE_MD_PATH"
