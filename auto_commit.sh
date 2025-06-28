#!/bin/bash

cd /Users/shanks/Documents/Projects/cheatingHehe

# Random file (or always the same if you want)
FILE="activity_log.txt"
echo "$(date): random update" >> "$FILE"

# Random commit message
MESSAGES=("update $FILE" "minor change" "random edit" "fix typo" "improve $FILE" "small tweak" "auto update" "log entry" "update content" "adjustments")
MSG=${MESSAGES[$(( RANDOM % ${#MESSAGES[@]} ))]}

git add "$FILE"
git commit -m "$MSG"
git push origin main

