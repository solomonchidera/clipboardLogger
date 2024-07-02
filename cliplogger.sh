#!/bin/bash

# A simple clipboard manager in bash
# Make sure you have the right to -
# use this tool on any machine


# Directory to store clipboard logs
LOG_DIR="$HOME/clipboard_logs"
mkdir -p "$LOG_DIR"

while true; do
    # Get current clipboard content
    CONTENT=$(pbpaste)

    # Get current timestamp
    TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

    # Save clipboard content to log file
    echo "$CONTENT" > "$LOG_DIR/clipboard_$TIMESTAMP.txt"

    # Wait for 10 minutes before checking clipboard again
    sleep 600
done
