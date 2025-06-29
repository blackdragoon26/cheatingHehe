#!/bin/bash

cd /Users/shanks/bin

FILE="activity_log.txt"
echo "$(date): Sankalp started working." >> "$FILE"

# Construct commit message
MSG="Today Sankalp started working at $(date)"

git add "$FILE"
git commit -m "$MSG"
git push origin main

