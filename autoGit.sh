#!/bin/bash
# auto_commit.sh — Auto commit and push daily changes

# Path to your repository (current folder)
REPO_PATH="$(pwd)"
BRANCH="main"

# Move to repo directory
cd "$REPO_PATH" || { echo "❌ Failed to enter directory: $REPO_PATH"; exit 1; }

# Check if it's a Git repo
if [ ! -d ".git" ]; then
  echo "❌ Not a Git repository! Run 'git init' first."
  exit 1
fi

# Stage all changes
git add .

# Commit only if there are changes
if git diff-index --quiet HEAD --; then
  echo "✅ No changes to commit."
else
  git commit -m "Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"
fi

# Check if remote 'origin' exists
if git remote get-url origin &>/dev/null; then
  git push origin "$BRANCH"
  echo "✅ Changes pushed to '$BRANCH' at $(date '+%Y-%m-%d %H:%M:%S')"
else
  echo "⚠️ No remote repository named 'origin'."
  echo "👉 Use: git remote add origin <repo-URL>"
  echo "Then push manually: git push -u origin $BRANCH"
fi
