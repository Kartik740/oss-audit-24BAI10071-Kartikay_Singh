#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kartikay Singh | Course: Open Source Software

# ----------------------------------
# Introduction
# ----------------------------------
echo "=============================================="
echo "   Open Source Manifesto Generator"
echo "=============================================="
echo ""
echo "Answer three questions to generate your manifesto."
echo ""

# ----------------------------------
# User Input
# ----------------------------------
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# ----------------------------------
# System Data
# ----------------------------------
DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# ----------------------------------
# Generate Manifesto Content
# ----------------------------------
MANIFESTO="On $DATE, I, $USER_NAME, reflect on the role of open source in my life. 
Every day, I rely on tools like $TOOL, which represent the idea of shared knowledge and collaboration. 
To me, freedom means $FREEDOM — not just access, but the ability to learn, modify, and improve. 
If given the opportunity, I would build $BUILD and share it openly, contributing back to the community that enables innovation. 
This manifesto is a reminder that open source is not just about code, but about responsibility and collective progress."

# ----------------------------------
# Write to File
# ----------------------------------
echo "$MANIFESTO" > $OUTPUT

# ----------------------------------
# Alias Concept (Demonstration via Comment)
# ----------------------------------
# Example: You could create an alias like:
# alias manifesto="bash /path/to/script5.sh"
# This allows quick execution using a custom command.

# ----------------------------------
# Output Display
# ----------------------------------
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
echo "----------- Your Manifesto -----------"
cat $OUTPUT
echo "-------------------------------------"