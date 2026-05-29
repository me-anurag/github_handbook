# Lesson 22: Remote Repos - origin, push, pull, fetch

## What this lesson covers

Connecting your local repo to GitHub and syncing changes.

### Intuition to build
- `origin` is just a nickname for a URL - nothing magical
- Push sends your commits up; pull brings others' commits down
- Fetch is pull's cautious sibling - it downloads but doesn't merge

### What to include
- `git remote add origin <url>`
- `git remote -v` - see your remotes
- `git push origin main` - first push, setting upstream
- `git push -u origin main` - setting the upstream once
- `git pull` vs `git fetch` + `git merge` - the difference
- `git remote rename`, `git remote remove`
