#!/bin/bash

cd /Users/shanks/Documents/Projects/cheatingHehe

# Random 0,1,2
RAND=$(( RANDOM % 3 ))

if [ "$RAND" -eq 0 ]; then
    echo "$(date): random update" >> activity_log.txt
    git add activity_log.txt
    git commit -m "Auto commit on $(date '+%Y-%m-%d %H:%M:%S')"
    git push origin main
else
    echo "No commit this time: $(date)" >> commit_log.txt
fi

