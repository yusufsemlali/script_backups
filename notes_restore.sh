#!/bin/bash
# This script will pull the latest backup from GitHub and restore it

DEST_FILE="/Users/ysemlali/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"
BACKUP_DIR="/Users/ysemlali/notes_backup"

# Change to the GitHub repo directorcd "$REPO_DIR"
cd "$BACKUP_DIR"
# Pull the latest changes from GitHub
git pull origin main

# Copy the backup file to the original location
cp "$BACKUP_DIR/NoteStore.sqlite" "$DEST_FILE"

echo "Notes restored from GitHub backup!"

