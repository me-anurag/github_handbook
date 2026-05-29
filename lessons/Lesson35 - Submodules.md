# Lesson 35: Submodules

## What this lesson covers

Including one Git repo inside another - and why it's powerful but tricky.

### Intuition to build
- A submodule is a repo inside a repo - useful when you need a specific version of an external dependency
- The parent repo stores a pointer (SHA) to a specific commit in the submodule, not the files themselves
- Submodules are notoriously confusing - this lesson should build careful, not fast, intuition

### What to include
- `git submodule add <url>` - adding a submodule
- How the `.gitmodules` file works
- Cloning a repo that has submodules (`--recurse-submodules`)
- Updating a submodule to a newer commit
- `git submodule update --init --recursive`
- When to use submodules vs package managers (npm, pip, etc.)
