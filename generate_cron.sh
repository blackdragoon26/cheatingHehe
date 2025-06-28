#!/bin/bash

CRON_TMP="/tmp/auto_commit_cron"
REPO_PATH="/Users/shanks/Documents/Projects/cheatingHehe"

# Clear cron file
echo "" > $CRON_TMP

# Choose 2-4 random commit times
NUM_COMMITS=$(( RANDOM % 3 + 2 ))  # 2, 3, 4

for i in $(seq 1 $NUM_COMMITS); do
    HOUR=$(( RANDOM % 24 ))
    MIN=$(( RANDOM % 60 ))
    echo "$MIN $HOUR * * * $REPO_PATH/auto_commit.sh >> /tmp/auto_commit.log 2>&1" >> $CRON_TMP
done

# Install new crontab
crontab $CRON_TMP

