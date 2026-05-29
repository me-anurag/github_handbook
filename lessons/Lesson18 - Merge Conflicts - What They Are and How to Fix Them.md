# Lesson 18: Merge Conflicts - What They Are and How to Fix Them

## What this lesson covers

What happens when two branches changed the same thing - and how to resolve it calmly.

### Intuition to build
- A conflict is Git saying "I don't know which version to keep - you decide"
- It's not an error, it's a question
- The conflict markers (<<<, ===, >>>) are just Git's way of showing both versions

### What to include
- How to trigger a conflict (intentionally, for practice)
- Reading the conflict markers in a file
- Three options: keep ours, keep theirs, write something new
- Marking resolved: `git add <file>` then `git commit`
- `git merge --abort` - backing out of a conflict
- Using a merge tool or editor (VS Code's merge UI)
