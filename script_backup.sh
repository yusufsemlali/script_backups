#!/bin/bash

# Set the directory containing your scripts and .zshrc file
SCRIPT_DIR=~/script_backups

# Create the script directory if it doesn't exist
mkdir -p $SCRIPT_DIR

# Copy the .zshrc file to the script directory
cp ~/.zshrc $SCRIPT_DIR
cp ~/ysf_scripts/leaks_check.sh ~/script_backups

# Navigate to the script directory
cd $SCRIPT_DIR

# Add the files to the repository
git add .

# Commit the changes
git commit -m "Backup scripts and .zshrc"

# Push the changes to GitHub
git push origin master
