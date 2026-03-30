#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kartikay Singh | Course: Open Source Software

# ----------------------------------
# List of Important Directories
# ----------------------------------
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo "        Directory Audit Report"
echo "=============================================="

# ----------------------------------
# Loop through directories
# ----------------------------------
for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then

        # Extract permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        GROUP=$(ls -ld $DIR | awk '{print $4}')

        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        # Display formatted output
        echo ""
        echo "Directory : $DIR"
        echo "Permissions : $PERMS"
        echo "Owner       : $OWNER"
        echo "Group       : $GROUP"
        echo "Size        : $SIZE"

    else
        echo "$DIR does not exist on this system"
    fi
done

# ----------------------------------
# Check Python Config Directory
# ----------------------------------
echo ""
echo "=============================================="
echo "Python Configuration Directory Check"
echo "=============================================="

PYTHON_CONFIG="/etc/python3"

if [ -d "$PYTHON_CONFIG" ]; then
    PERMS=$(ls -ld $PYTHON_CONFIG | awk '{print $1, $3, $4}')
    echo "$PYTHON_CONFIG exists"
    echo "Permissions / Owner / Group : $PERMS"
else
    echo "$PYTHON_CONFIG does not exist"
fi