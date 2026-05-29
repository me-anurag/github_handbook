# Lesson 24: Forking a Repo

## What this lesson covers

Making your own copy of someone else's repo on GitHub - the foundation of open source contribution.

### Intuition to build
- Fork lives on GitHub (server-side copy); clone lives on your machine (local copy)
- Fork -> clone -> change -> PR is the standard open source contribution loop
- The original repo is called "upstream"

### What to include
- How to fork on GitHub (the button)
- Fork vs clone - the distinction
- Setting up the upstream remote: `git remote add upstream <original-url>`
- Keeping your fork in sync with upstream: `fetch upstream` -> `merge upstream/main`
- The fork -> clone -> branch -> PR workflow overview
