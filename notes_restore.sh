#!/bin/bash
# Restore script

# Define the source and destination paths
SOURCE="~/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"
DEST="~/notes_backup/NoteStore.sqlite"


# Navigate to your repo
cd /path/to/your/repo

# Pull the latest changes
git pull

# Copy the file
cp $SOURCE $DEST

