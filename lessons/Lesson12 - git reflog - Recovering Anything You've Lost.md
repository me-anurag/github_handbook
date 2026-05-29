# Lesson 12: git reflog - Recovering Anything You've Lost

## What this lesson covers

The safety net that saves you after a bad reset, dropped stash, or deleted branch.

### Intuition to build
- Git almost never deletes anything permanently - it just stops pointing to it
- `reflog` is a local log of everywhere HEAD has been, even after resets and rebases
- This lesson is "break glass in emergency" - you might not use it daily but you'll be grateful it exists

### What to include
- `git reflog` - reading the output
- `git checkout <reflog-SHA>` - getting back to a lost state
- Recovering a deleted branch using reflog
- Recovering after a `git reset --hard`
- Expiry: reflog entries are kept for 90 days by default
