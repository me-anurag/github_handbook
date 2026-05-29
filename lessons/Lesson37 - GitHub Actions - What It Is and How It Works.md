# Lesson 37: GitHub Actions - What It Is and How It Works

## What this lesson covers

Automating tasks that run whenever something happens in your repo.

### Intuition to build
- Actions is a "when X happens, do Y" system - event-driven automation
- It runs in GitHub's cloud, so nothing needs to be set up on your machine
- CI/CD is the most common use case but Actions can do almost anything

### What to include
- Core concepts: workflow, event, job, step, runner
- The trigger events: `push`, `pull_request`, `schedule`, `workflow_dispatch`
- Where workflows live: `.github/workflows/`
- The marketplace - pre-built actions for common tasks
- The difference between CI (test on every push) and CD (deploy on merge to main)
- A visual of the event -> trigger -> job -> steps flow
