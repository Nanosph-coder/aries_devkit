# ArIES DevKit

A collection of Bash utilities for basic Linux system verification and Git repository inspection.

---

## Project Structure

```text
aries_devkit/
├── README.md
├── docs/
└── scripts/
    ├── setup_check.sh
    └── git_summary.sh
```

---

## Requirements

* Ubuntu/Linux
* Bash
* Git

---

# Scripts

## 1. setup_check.sh

Performs a basic system health check.

### Features

* Displays system information:

  * Hostname
  * Current user
  * OS version
  * Current date and time
* Checks whether the following tools are installed:

  * git
  * python3
  * pip3
  * ros2
* Checks available disk space and reports if it is below **5 GB**.

### Usage

```bash
chmod +x scripts/setup_check.sh
./scripts/setup_check.sh
```

### Example Output

```text
Setup Initiated
Hostname: nayan-OMEN-Gaming-Laptop-16-ae0xxx
Current User: nayan
OS Version: 6.17.0-35-generic
Date: Mon Jun 29 08:04:27 PM IST 2026
[OK] git
[OK] python3
[OK] pip3
[OK] ros2
Disk Status: [NORMAL]
Setup Completed
```

---

## 2. git_summary.sh

Displays a summary of a Git repository.

### Features

* Accepts a Git repository path from the user.
* Uses the current directory if no path is provided.
* Verifies that the directory is a valid Git repository.
* Displays:

  * Current branch
  * Last five commits
  * Number of uncommitted changes
* Prints **Done.** after completion.

### Usage

Current directory:

```bash
chmod +x scripts/git_summary.sh
./scripts/git_summary.sh
```

Specific repository:

```bash
./scripts/git_summary.sh /path/to/repository
```

### Example Output

```text
Path to Git Repo (leave blank for current directory):

Current Branch:
main

Last 5 Commits:
6c3f21d Update README
84f1b0c Add git_summary.sh
51d2e8a Add setup_check.sh
b4a99fd Initial project setup
a73e5b2 Initial commit

Uncommitted Changes:
2

Done.
```

---

## Author

Created as part of the **ArIES IIT Roorkee – Linux, Bash, Git & GitHub Assignment**.

