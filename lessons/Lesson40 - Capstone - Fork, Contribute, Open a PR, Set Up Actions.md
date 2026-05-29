# Lesson 40: Capstone - Fork, Contribute, Open a PR, Set Up Actions

## What this lesson covers

Putting everything together in one real end-to-end project.

### Intuition to build
- Learning Git in isolation is different from using it on a real project
- This lesson connects every major concept into a single coherent workflow
- By the end, you'll have a real contribution on GitHub with CI running against it

### The project
- Find a beginner-friendly open source repo (or use a provided practice repo)
- Fork it -> clone it -> create a feature branch

### The workflow
- Make a meaningful change (fix a bug, add a feature, improve docs)
- Write good commits following Conventional Commits
- Push the branch and open a PR with a proper description
- Respond to a code review comment

### The automation
- Add a `.github/workflows/ci.yml` that runs on every PR
- Include at least: lint or test step, a status badge in the README

### The reflection
- Review your own commit history - would a stranger understand the story?
- What would you do differently knowing what you know now?
- Where to go next: suggest advanced topics (Git internals, monorepos, custom Actions)
