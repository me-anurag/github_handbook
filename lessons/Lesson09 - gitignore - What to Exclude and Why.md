# Lesson 09: gitignore - What to Exclude and Why

## What this lesson covers

Keeping secrets, build artifacts, and system files out of your repo.

### Intuition to build
- Not everything in your folder should be tracked - some files are generated, personal, or secret
- `.gitignore` is just a list of patterns Git should pretend don't exist
- Once a file is tracked, `.gitignore` won't help - you have to untrack it first

### What to include
- Syntax: exact filenames, wildcards (`*.log`), folders (`node_modules/`)
- Common things to ignore: `node_modules`, `.env`, build output, OS files (`.DS_Store`)
- Global gitignore for machine-level ignores
- `git rm --cached` to untrack an already-tracked file
- Link to gitignore.io for language/framework templates
