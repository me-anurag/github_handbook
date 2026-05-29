# Lesson 17: Merging Branches

## What this lesson covers

Bringing the work from one branch back into another.

### Intuition to build
- Merging is combining two timelines into one
- Fast-forward vs three-way merge - Git picks the right one automatically
- Merge commits tell the story of when work was integrated

### What to include
- `git merge <branch>` - the basic command
- Fast-forward merge: what it is and when it happens
- Three-way merge: what it is and when it happens (illustrated)
- The merge commit and what it looks like in `git log --graph`
- `git merge --no-ff` - forcing a merge commit even when fast-forward is possible
- Previewing a merge with `git diff main..<branch>` before doing it
