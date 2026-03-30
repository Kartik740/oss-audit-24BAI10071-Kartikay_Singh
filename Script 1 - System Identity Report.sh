#!/bin/bash
# Script 1: System Identity Report
# Author: Kartikay Singh | Course: Open Source Software

# -------------------------------
# Variables (User-defined)
# -------------------------------
STUDENT_NAME="Kartikay Singh"
SOFTWARE_CHOICE="Python"

# -------------------------------
# System Information (Command Substitution)
# -------------------------------
KERNEL=$(uname -r)                       # Kernel version
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')   # Linux distribution
USER_NAME=$(whoami)                      # Current user
HOME_DIR=$HOME                           # Home directory
UPTIME=$(uptime -p)                      # System uptime (pretty format)
CURRENT_DATE=$(date "+%A, %d %B %Y")     # Current date
CURRENT_TIME=$(date "+%H:%M:%S")         # Current time

# -------------------------------
# License Information
# -------------------------------
LICENSE="GNU General Public License (GPL)"

# -------------------------------
# Output Section (Formatted Display)
# -------------------------------
echo "=============================================="
echo "     Open Source Audit — $STUDENT_NAME"
echo "=============================================="
echo ""

echo "Software Chosen : $SOFTWARE_CHOICE"
echo "----------------------------------------------"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo ""

echo "User            : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo ""

echo "System Uptime   : $UPTIME"
echo "Date            : $CURRENT_DATE"
echo "Time            : $CURRENT_TIME"
echo ""

echo "License Info    : This Linux system is primarily"
echo "                  distributed under the $LICENSE"
echo ""

echo "=============================================="
echo "   System Status: READY FOR USE"
echo "=============================================="