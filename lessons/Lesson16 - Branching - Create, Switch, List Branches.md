# Lesson 16: Branching - Create, Switch, List Branches

## What this lesson covers

Working on multiple things simultaneously without them interfering with each other.

### Intuition to build
- A branch is just a pointer to a commit - incredibly lightweight
- `main` is not special - it's just the default first branch
- Think of branches as parallel timelines

### What to include
- `git branch` - list branches
- `git branch <name>` - create a branch
- `git switch <name>` (modern) vs `git checkout <name>` (classic)
- `git switch -c <name>` - create and switch in one command
- `git branch -d <name>` - delete a branch
- HEAD and how it moves with you when you switch
