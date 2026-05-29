# Lesson 08: Git Object Model and HEAD - How Git Stores Everything

## What this lesson covers

The mental model that makes all advanced Git commands make sense.

### Intuition to build
- Git is just a key-value store - every object has a SHA hash as its key
- Four object types: blob (file content), tree (folder), commit (snapshot + metadata), tag
- Refs are just human-readable names for SHA hashes (branches, HEAD, tags)
- HEAD -> branch -> commit - the chain of pointers

### What to include
- The four object types explained simply (no deep-dive into internals)
- How a commit points to a tree, which points to blobs
- What `HEAD` actually is: a file that contains a branch name (or a SHA in detached mode)
- Detached HEAD - what it means, why it happens, and that it's not as scary as it sounds
- Why this matters: `reset`, `rebase`, and `reflog` all manipulate these pointers

### Tone
Conceptual but grounding - this is the "aha" lesson that reframes everything before it.
