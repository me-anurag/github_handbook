# Lesson 31: Branch Protection Rules

## What this lesson covers

Locking down important branches so nothing gets merged without going through the right process.

### Intuition to build
- Without protection, anyone can push directly to `main` - one bad push can break everything
- Branch protection turns process into enforcement
- This is how teams ensure code review and CI always happen before merging

### What to include
- Setting up branch protection on GitHub (Settings -> Branches)
- Require pull request reviews before merging
- Require status checks to pass (CI must be green)
- Restrict who can push to the branch
- Require linear history (no merge commits)
- CODEOWNERS file - automatically requesting review from the right people
