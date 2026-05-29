# Lesson 20: Squashing Commits

## What this lesson covers

Collapsing multiple messy commits into one clean one before merging.

### Intuition to build
- "WIP", "fix typo", "oops" commits are fine while working but messy in shared history
- Squashing is tidying up before you share your work
- It's just interactive rebase with `squash` or `fixup`

### What to include
- `git rebase -i HEAD~N` - opening the interactive rebase editor
- The `pick`, `squash`, and `fixup` commands
- Writing a good combined commit message after squashing
- `git merge --squash <branch>` as an alternative
- When to squash (before PR) vs when not to (already merged)
