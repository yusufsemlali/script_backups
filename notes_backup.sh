#!/bin/bash
# Backup script

# Define the source and destination paths
SOURCE="~/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"
DEST="~/notes_backup/NoteStore.sqlite"

# Copy the file
cp $SOURCE $DEST

# Navigate to your repo
cd /path/to/your/repo

# Commit and push the changes
git add NoteStore.sqlite
git commit -m "Backup NoteStore.sqlite"
git push

