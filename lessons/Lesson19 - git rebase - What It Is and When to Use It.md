# Lesson 19: git rebase - What It Is and When to Use It

## What this lesson covers

Replaying commits on top of another branch for a cleaner history.

### Intuition to build
- Rebase rewrites history - commits get new SHAs
- The difference between merge (keeps both timelines) and rebase (linearises history)
- The golden rule: never rebase commits that have been pushed to a shared branch

### What to include
- `git rebase <branch>` - move your commits on top of another branch
- Visual: before and after rebase vs merge
- Interactive rebase intro: `git rebase -i HEAD~3`
- The golden rule and why it exists
- When to prefer rebase (clean feature branch) vs merge (preserve history)
