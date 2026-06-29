#!/usr/bin/env bash

read -p "Path to Git repo (leave empty for current directory): " REPO_PATH

if [ -z "$REPO_PATH" ]; then
    REPO_PATH="."
fi

if [ ! -d "$REPO_PATH/.git" ]; then
    echo "Error: Not a Git repository."
    exit 1
fi

cd "$REPO_PATH" || exit 1

echo "Current branch:"
git branch --show-current

echo "Last 5 commits:"
git log --oneline -5

echo "Repository status:"
git status --short

echo "Done."
