# Open Source Software Lab Assignment

## Student Details
- **Name:** Kartikay Singh  
- **Roll Number:** 24BAI10071 
- **Course:** Open Source Software  

---

## Chosen Software
**Python**

Python is an open-source, high-level programming language known for its simplicity, readability, and wide range of applications including web development, data science, artificial intelligence, and automation.

---

## Project Overview

This repository contains five shell scripts developed as part of the Open Source Software coursework. Each script demonstrates different Linux and shell scripting concepts such as system inspection, package management, file analysis, and user interaction.

---

## Scripts Description

### 1. Script 1 — System Identity Report
- Displays system information such as:
  - Linux distribution
  - Kernel version
  - Logged-in user
  - Home directory
  - System uptime and date/time
- Demonstrates variables, command substitution, and formatted output.

---

### 2. Script 2 — FOSS Package Inspector
- Checks if a package (e.g., Python) is installed.
- Displays version and package details.
- Uses a case statement to describe the package.
- Demonstrates if-else, grep, and package management commands.

---

### 3. Script 3 — Disk and Permission Auditor
- Loops through important system directories.
- Displays:
  - Directory size
  - Permissions
  - Owner and group
- Checks Python configuration directory.
- Demonstrates loops, arrays, and text processing.

---

### 4. Script 4 — Log File Analyzer
- Reads a log file line by line.
- Counts occurrences of a keyword (e.g., ERROR).
- Displays summary and last 5 matching lines.
- Demonstrates while loop, conditionals, and file handling.

---

### 5. Script 5 — Open Source Manifesto Generator
- Takes user input interactively.
- Generates a personalized manifesto.
- Saves output to a `.txt` file.
- Demonstrates user input, string handling, and file writing.

---

## How to Run the Scripts (Step-by-Step)

### Step 1: Open Terminal
Press `Ctrl + Alt + T` to open the terminal.

---

### Step 2: Clone the Repository
```bash
git clone https://github.com/Kartik740/oss-audit-24BAI10071-Kartikay_Singh.git
cd oss-audit-24BA110071-Kartikay_Singh
```

### Step 3: Give Execution Permission
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Step 4: Run Each Script
Script 1
```bash
./script1.sh
```

Script 2
```bash
./script2.sh
```

Script 3
```bash
./script3.sh
```

Script 4
```bash
./script4.sh /path/to/logfile error
```

Script 5
```bash
./script5.sh
```