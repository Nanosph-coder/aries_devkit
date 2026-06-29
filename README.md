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

## Author

Created as part of the **ArIES IIT Roorkee – Linux, Bash, Git & GitHub Assignment**.

