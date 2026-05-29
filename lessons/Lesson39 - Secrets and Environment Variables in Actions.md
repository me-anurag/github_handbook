# Lesson 39: Secrets and Environment Variables in Actions

## What this lesson covers

Storing sensitive values securely and passing configuration into workflows.

### Intuition to build
- Secrets are like environment variables that GitHub encrypts and never reveals in logs
- Never hardcode API keys, tokens, or passwords in a workflow file
- The difference between repository secrets, environment secrets, and org secrets

### What to include
- Adding a secret in GitHub (Settings -> Secrets and variables)
- Accessing secrets in a workflow: `${{ secrets.MY_SECRET }}`
- Environment variables: `env:` at workflow, job, or step level
- The difference between secrets (encrypted, write-only) and variables (plain text, readable)
- GitHub's built-in variables: `GITHUB_SHA`, `GITHUB_REF`, `GITHUB_ACTOR`
- Masking custom values in logs with `::add-mask::`
