#!/bin/bash
# Restore script

# Define the source and destination paths
DEST="~/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"
SOURCE="~/notes_backup/NoteStore.sqlite"


# Navigate to your repo
cd /path/to/your/repo

# Pull the latest changes
git pull

# Copy the file
cp $SOURCE $DEST

