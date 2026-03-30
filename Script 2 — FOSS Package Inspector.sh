#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kartikay Singh | Course: Open Source Software

# ----------------------------------
# User Input (Package Name)
# ----------------------------------
PACKAGE="python3"   # You can change this to test other packages

# ----------------------------------
# Check if package is installed
# (Debian/Ubuntu using dpkg)
# ----------------------------------
if dpkg -l | grep -w $PACKAGE &>/dev/null
then
    echo "--------------------------------------"
    echo "$PACKAGE is INSTALLED on the system."
    echo "--------------------------------------"

    # Show package details
    dpkg -l | grep -w $PACKAGE

else
    echo "--------------------------------------"
    echo "$PACKAGE is NOT installed."
    echo "--------------------------------------"
fi

# ----------------------------------
# Additional Info (Version, Summary)
# ----------------------------------
echo ""
echo "Fetching package details..."

dpkg -s $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'

# ----------------------------------
# Case Statement (Philosophy Notes)
# ----------------------------------
echo ""
echo "Philosophy Note:"

case $PACKAGE in
    python3)
        echo "Python: simplicity and readability driving modern computing."
        ;;
    apache2)
        echo "Apache: the web server that built the open internet."
        ;;
    mysql-server)
        echo "MySQL: open source powering data-driven applications."
        ;;
    vlc)
        echo "VLC: media freedom without restrictions or codecs barriers."
        ;;
    *)
        echo "Unknown package: open source tool with its own unique role."
        ;;
esac