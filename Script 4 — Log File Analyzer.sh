#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kartikay Singh | Course: Open Source Software
# Usage: ./log_analyzer.sh /path/to/logfile [keyword]

# ----------------------------------
# Input Arguments
# ----------------------------------
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword = error
COUNT=0

# ----------------------------------
# Check if file exists
# ----------------------------------
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# ----------------------------------
# Check if file is empty (do-while style retry)
# ----------------------------------
while [ ! -s "$LOGFILE" ]
do
    echo "Warning: File is empty. Waiting for content..."
    sleep 2
done

# ----------------------------------
# Read file line by line
# ----------------------------------
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# ----------------------------------
# Output Summary
# ----------------------------------
echo "=============================================="
echo "Log File Analysis Report"
echo "=============================================="
echo "File      : $LOGFILE"
echo "Keyword   : $KEYWORD"
echo "Matches   : $COUNT"
echo "=============================================="

# ----------------------------------
# Show last 5 matching lines
# ----------------------------------
echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5