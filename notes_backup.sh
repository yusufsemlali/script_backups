#!/bin/bash
# Backup script

# Define the source and destination paths
SOURCE_FILE="/Users/ysemlali/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"
BACKUP_DIR="/Users/ysemlali/notes_backup"

# Copy the NoteStore.sqlite file to the backup directory
cp "$SOURCE_FILE" "$BACKUP_DIR"

# Change to the GitHub repo directory
cd "$BACKUP_DIR"

# Add the changes to the git staging area
git add .

# Commit the changes
git commit -m "Backup of notes"

# Push the changes to GitHub
git push

echo "Backup of notes completed and pushed to GitHub!"

