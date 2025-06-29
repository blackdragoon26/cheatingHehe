#!/bin/bash


cd /Users/shanks/bin || exit 1


FILE="activity_log.txt"
echo "Today Sankalp started working at $(date)" >> "$FILE"

git add "$FILE"
git commit -m "Today Sankalp started working at $(date)"


git pull --rebase origin main
git push origin main

