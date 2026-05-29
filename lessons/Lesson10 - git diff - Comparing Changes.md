# Lesson 10: git diff - Comparing Changes

## What this lesson covers

Seeing exactly what changed, before and after committing.

### Intuition to build
- `git diff` answers "what did I actually change?" before you commit
- The +/- syntax: red is removed, green is added
- Three different comparison modes depending on where your changes are

### What to include
- `git diff` - unstaged changes vs last commit
- `git diff --staged` - staged changes vs last commit
- `git diff <SHA>..<SHA>` - comparing two commits
- `git diff <branch>..<branch>` - comparing branches (preview of merge)
- Reading the unified diff format (the `@@` header, context lines)
- Tip: most editors and GitHub show this visually
