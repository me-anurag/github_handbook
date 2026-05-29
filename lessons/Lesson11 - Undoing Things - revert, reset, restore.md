# Lesson 11: Undoing Things - revert, reset, restore

## What this lesson covers

Every way to walk something back - and which one to reach for.

### Intuition to build
- There are three different "undo" tools and they work at different levels
- `restore` -> undo file changes; `reset` -> undo commits (locally); `revert` -> undo safely in shared history
- Rewriting history you've already pushed is dangerous - that's why `revert` exists

### What to include
- `git restore <file>` - discard working directory changes
- `git restore --staged <file>` - unstage a file
- `git reset --soft`, `--mixed`, `--hard` - the three modes explained clearly
- `git revert <SHA>` - create a new commit that undoes a previous one
- Decision guide: which tool to use when
- Warning: never `reset --hard` on commits already pushed to a shared branch
