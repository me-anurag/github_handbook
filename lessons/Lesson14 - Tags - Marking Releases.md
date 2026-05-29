# Lesson 14: Tags - Marking Releases

## What this lesson covers

Pinning a specific commit as a named, permanent milestone.

### Intuition to build
- Tags are like branches that never move - a permanent bookmark
- Semantic versioning: what `v1.0.0` actually means
- Lightweight vs annotated tags

### What to include
- `git tag v1.0.0` - lightweight tag
- `git tag -a v1.0.0 -m "message"` - annotated tag
- `git tag` - list all tags
- `git push origin --tags` - tags don't push automatically
- `git show v1.0.0`
- When to use tags (releases) vs branches (ongoing work)
