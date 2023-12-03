#!/bin/bash
# Restore script

# Define the source and destination paths
SOURCE="/path/to/your/repo/NoteStore.sqlite"
DEST="/Users/<your_username>/Library/Group Containers/group.com.apple.notes/NoteStore.sqlite"

# Navigate to your repo
cd /path/to/your/repo

# Pull the latest changes
git pull

# Copy the file
cp $SOURCE $DEST

