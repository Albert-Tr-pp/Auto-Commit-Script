# Auto-Commit-Script

![Language](https://img.shields.io/badge/Language-Bash-lightgrey)
![Version](https://img.shields.io/badge/version-Beta-orange)

```
Small Bash script that helps automate Git commits and pushes (experimental version - requires better validation)
```
> **Please check the code before using it to ensure it does not break your repository structure.**

## Features
- Checks if the current directory is a valid Git repository
- Accept a commit message as a command-line argument
- If no message is provided, prompts user to enter one
- Checks status of local repository
- Automatically pushes to branch
---

```bash
chmod +x auto_commit.sh # to make executable

./auto_commit.sh "Your commit message"

#Or add the script to PATH to run without specifying the path
```