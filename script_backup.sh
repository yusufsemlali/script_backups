#!/bin/bash

# Set the directory containing your scripts and .zshrc file
SCRIPT_DIR=~/script_backups

# Create the script directory if it doesn't exist
mkdir -p $SCRIPT_DIR

# Copy the .sh files and .zshrc file to the script directory
cp ~/*.sh $SCRIPT_DIR
cp ~/.zshrc $SCRIPT_DIR

# Navigate to the script directory
cd $SCRIPT_DIR

# Initialize a new Git repository (if one doesn't already exist)
if [ ! -d .git ]; then
    git init
fi

# Add the files to the repository
git add .

# Commit the changes
git commit -m "Backup scripts and .zshrc"

# Push the changes to GitHub
# Replace 'origin' and 'master' with your remote name and branch if they're different
git push origin master
