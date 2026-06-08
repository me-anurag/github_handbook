# Contributing to GitHub Handbook

Thank you for your interest in contributing! This file is a sample `CONTRIBUTING.md`.

> **GitHub behavior:** When a user opens an Issue or Pull Request, GitHub automatically shows a link to this file. It sets expectations before they start writing.

---

## How to Contribute

### Reporting Issues

Before opening an issue:
- Search existing issues to avoid duplicates
- Use the issue templates provided
- Be specific: include steps to reproduce, expected vs actual behavior

### Suggesting Improvements

- Open an issue first to discuss the idea
- Reference the lesson number you'd like to improve
- Explain *why* the change improves the learning experience

### Submitting a Pull Request

1. Fork the repo
2. Create a feature branch: `git switch -c fix/lesson-05-typo`
3. Make your changes
4. Write a clear commit message: `fix(lesson-05): correct staging area description`
5. Push and open a PR against `main`
6. Fill in the PR template completely

### Commit Message Format

This repo follows [Conventional Commits](https://www.conventionalcommits.org/):

```
type(scope): short description

Optional longer body explaining the why.
```

Types: `feat`, `fix`, `docs`, `chore`, `refactor`, `style`

Scopes: `lesson-01` through `lesson-40`, `readme`, `guide`, `samples`

---

## Style Guide

- Use plain, friendly language — this is a learning resource
- One concept per sentence where possible
- Code examples must be real and runnable
- Markdown must pass a linter (`markdownlint`)

## Code of Conduct

This project follows the [Contributor Covenant](https://www.contributor-covenant.org/).
Be kind and constructive in all interactions.

---

*Thank you for helping make this handbook better for everyone.*
