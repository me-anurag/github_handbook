# GitHub Handbook

A beginner-to-advanced handbook for learning Git and GitHub — structured as 40 lessons across 4 phases. Each lesson builds on the last, taking you from zero knowledge to confidently collaborating on real-world projects and automating workflows with GitHub Actions.

---

## Who this is for

- Complete beginners who have never used Git
- Developers who know basic Git but want to fill in the gaps
- Anyone who wants to understand *why* commands work, not just *how* to type them

---

## How to use this handbook

Work through lessons in order — each phase assumes you have completed the previous one. Every lesson file contains the key concepts, commands, and intuition to build. No fluff, no filler.

---

## Phases at a glance

| Phase | Focus | Lessons |
|-------|-------|---------|
| Phase 1 | Core Git — local version control | 01 - 21 |
| Phase 2 | Remotes and GitHub basics | 22 - 30 |
| Phase 3 | Team collaboration and advanced GitHub | 31 - 36 |
| Phase 4 | Automation with GitHub Actions | 37 - 40 |

---

## Phase 1 - Core Git (Local)

> Master Git on your own machine before touching GitHub. These lessons build the mental model that makes everything else make sense.

---

### Lesson 01 - What is Git and GitHub - Why Version Control Matters
The "why" before the "how". Covers the version chaos problem, the difference between Git (a tool) and GitHub (a platform), and a bird's-eye view of how local repos connect to remote ones. No commands — just context and motivation.

---

### Lesson 02 - Setup and Config - Install Git, Set Name and Email
Install Git on Windows, macOS, or Linux and configure your identity. Covers `git config --global`, setting your name, email, and default editor, and the difference between global and local config.

---

### Lesson 03 - SSH Keys - Setup and Connect to GitHub
One-time setup that lets you push and pull without typing a password. Covers generating an SSH key pair, adding the public key to GitHub, testing the connection, and the difference between SSH and HTTPS remote URLs. Placed early so auth never blocks you later.

---

### Lesson 04 - Creating Your First Repo - git init
Turn any folder into a Git-tracked project. Covers `git init`, what the hidden `.git` folder is, reading your first `git status`, and the concept of untracked files.

---

### Lesson 05 - Staging and Committing - add, commit, status
The core loop you will run hundreds of times a day. Covers the three zones (working directory, staging area, repository), `git add`, `git commit`, and how to read `git status` output. Includes the classic three-box mental model.

---

### Lesson 06 - Commit Messages - How to Write Good Ones
Bad messages make history useless; good ones make it a superpower. Covers the 50/72 rule, imperative mood, what belongs in the body, and an introduction to Conventional Commits (`feat:`, `fix:`, `docs:`, `chore:`).

---

### Lesson 07 - git log - Reading Your Commit History
Your project's journal. Covers `git log`, `git log --oneline`, the `--graph --all` view, SHA hashes as unique commit fingerprints, what HEAD means, and `git show` for inspecting a single commit.

---

### Lesson 08 - Git Object Model and HEAD - How Git Stores Everything
The "aha" lesson. Covers Git's four object types (blob, tree, commit, tag), how refs and branches are just pointers to SHAs, what HEAD actually is as a file, and detached HEAD — demystified. This lesson makes `reset`, `rebase`, and `reflog` feel logical rather than magical.

---

### Lesson 09 - gitignore - What to Exclude and Why
Keep secrets, build artifacts, and OS clutter out of your repo. Covers `.gitignore` syntax (filenames, wildcards, folders), common ignores (`node_modules`, `.env`, `.DS_Store`), global gitignore, and how to untrack a file that was already committed.

---

### Lesson 10 - git diff - Comparing Changes
See exactly what changed before you commit. Covers `git diff` (unstaged), `git diff --staged`, comparing two commits or two branches, and how to read the unified diff format with `+` / `-` lines and `@@` headers.

---

### Lesson 11 - Undoing Things - revert, reset, restore
Three tools, three different levels of undo. Covers `git restore` for file-level changes, `git reset` (soft, mixed, hard) for commit-level undo, and `git revert` for safely undoing in shared history. Includes a decision guide and a clear warning about force-pushing.

---

### Lesson 12 - git reflog - Recovering Anything You've Lost
The safety net. Covers reading `git reflog` output, using a reflog SHA to recover a lost state, recovering a deleted branch, and recovering after an accidental `git reset --hard`. Explains the 90-day expiry window.

---

### Lesson 13 - git stash - Save Work Without Committing
Shelve work temporarily to switch context. Covers `git stash`, `git stash pop` vs `apply`, `git stash list`, naming a stash, dropping and clearing stashes, and stashing untracked files with `--include-untracked`.

---

### Lesson 14 - Tags - Marking Releases
Permanent bookmarks for important commits. Covers lightweight vs annotated tags, `git tag`, `git tag -a`, listing tags, pushing tags (they don't push automatically), and semantic versioning (`v1.0.0`).

---

### Lesson 15 - Aliases - Shortcuts for Long Commands
Make Git faster with personal shortcuts. Covers `git config --global alias.*`, a collection of useful aliases (`st`, `co`, `lg`, `undo`), the full `lg` one-liner for a beautiful graph view, and where aliases live in `.gitconfig`.

---

### Lesson 16 - Branching - Create, Switch, List Branches
Work on multiple things without interference. Covers `git branch`, `git switch` (modern) vs `git checkout` (classic), creating and switching in one command, deleting branches, and how HEAD moves with you as you switch.

---

### Lesson 17 - Merging Branches
Combine two timelines into one. Covers `git merge`, fast-forward vs three-way merges, what a merge commit looks like in `git log --graph`, forcing a merge commit with `--no-ff`, and previewing a merge before doing it.

---

### Lesson 18 - Merge Conflicts - What They Are and How to Fix Them
Conflicts are questions, not errors. Covers how to trigger a conflict intentionally, reading the `<<<<<<<` / `=======` / `>>>>>>>` markers, the three resolution options, marking a conflict resolved, `git merge --abort`, and using VS Code's visual merge tool.

---

### Lesson 19 - git rebase - What It Is and When to Use It
Replay commits on top of another branch for a linear history. Covers `git rebase`, a visual comparison of rebase vs merge, an intro to interactive rebase (`git rebase -i`), the golden rule (never rebase shared commits), and when to choose rebase over merge.

---

### Lesson 20 - Squashing Commits
Tidy up messy commit history before sharing it. Covers `git rebase -i HEAD~N`, the `pick`, `squash`, and `fixup` commands, writing a clean combined message, and `git merge --squash` as an alternative.

---

### Lesson 21 - Git Workflows - Gitflow, Trunk-Based, Feature Branch
The bridge from knowing commands to working on a real team. Covers the feature branch workflow (simplest baseline), Gitflow (main, develop, feature, release, hotfix), trunk-based development, a comparison of when each fits, and how workflows connect to PRs and CI.

---

## Phase 2 - Remotes and GitHub Basics

> Connect your local Git knowledge to GitHub. Learn to collaborate with others through remotes, pull requests, and issues.

---

### Lesson 22 - Remote Repos - origin, push, pull, fetch
Sync your local repo with GitHub. Covers `git remote add`, `git remote -v`, `git push`, setting an upstream with `-u`, and the important distinction between `git pull` and `git fetch` + `git merge`.

---

### Lesson 23 - Cloning a Repo
Get a full copy of any repo onto your machine. Covers `git clone`, cloning into a named folder, what gets set up automatically (origin, main branch), shallow clones with `--depth 1`, and SSH vs HTTPS clone URLs.

---

### Lesson 24 - Forking a Repo
Make your own server-side copy of someone else's project. Covers what a fork is vs a clone, the upstream remote, keeping your fork in sync with the original, and the full fork -> clone -> branch -> PR contribution loop.

---

### Lesson 25 - Pull Requests - Open, Review, Merge
The primary collaboration mechanism on GitHub. Covers opening a PR (base vs compare branch), writing a good description, the PR page (Files changed, checks, reviewers), merge options (merge commit, squash, rebase), and linking a PR to an issue with `Closes #N`.

---

### Lesson 26 - Code Review - Leaving Comments, Requesting Changes, Approving
The other side of pull requests. Covers starting a review, inline vs general comments, GitHub's suggestion block, the three outcomes (Comment, Approve, Request changes), what to look for in a review, and how to give feedback that doesn't feel hostile.

---

### Lesson 27 - Issues - Create, Label, Close
GitHub's built-in task tracker. Covers creating issues, built-in and custom labels, milestones, closing an issue automatically via a PR, issue templates, and searching and filtering your issue list.

---

### Lesson 28 - Project Boards and Milestones
The project management layer on top of issues. Covers GitHub Projects v2 (board, table, and roadmap views), adding issues and PRs to a project, custom fields (priority, status, size), milestones, and how teams use boards day-to-day.

---

### Lesson 29 - README and Markdown - Write a Good README
The front door of your project. Covers Markdown syntax (headings, lists, links, images, code blocks, tables), what a great README includes, GitHub-flavored Markdown extras (task lists, alerts), badges, and the special personal profile README.

---

### Lesson 30 - Reading Open Source Repos - CONTRIBUTING, Issue Templates, Code of Conduct
How to navigate an unfamiliar repo and contribute without stepping on anyone's toes. Covers CONTRIBUTING.md, CODE_OF_CONDUCT.md, issue and PR templates, finding "good first issues", understanding a project's culture through its history, and `git blame`.

---

## Phase 3 - Team Collaboration and Advanced GitHub

> Apply your skills in a team context. Learn to protect branches, collaborate safely, deploy sites, and handle the errors that trip everyone up.

---

### Lesson 31 - Branch Protection Rules
Enforce process on important branches. Covers setting up protection rules in GitHub Settings, requiring PR reviews before merging, requiring CI status checks to pass, restricting direct pushes, requiring linear history, and the CODEOWNERS file.

---

### Lesson 32 - Collaborating on a Team Repo
What day-to-day teamwork actually looks like. Covers inviting collaborators, the daily pull-branch-commit-push-PR loop, handling diverged branches with `git pull --rebase`, reviewing teammates' PRs, and team conventions for branch naming and commit messages.

---

### Lesson 33 - GitHub CLI - gh Commands
Do GitHub things from the terminal. Covers installing and authenticating `gh`, creating and cloning repos, creating and managing PRs and issues, checking Actions run status, and setting up `gh` aliases for common workflows.

---

### Lesson 34 - GitHub Pages - Deploy a Site From a Repo
Publish a website straight from a GitHub repo for free. Covers enabling Pages in Settings, deploying from a branch or `/docs` folder, custom domains, Jekyll as a built-in static site generator, and the `username.github.io/repo` URL structure.

---

### Lesson 35 - Submodules
Include one Git repo inside another. Covers `git submodule add`, the `.gitmodules` file, cloning with `--recurse-submodules`, updating a submodule, `git submodule update --init --recursive`, and when to use submodules vs a package manager.

---

### Lesson 36 - Common Errors and Troubleshooting
The errors every beginner hits, and exactly how to fix them. Covers detached HEAD, ahead/behind origin messages, diverged branches, rejected pushes and safe force-pushing with `--force-with-lease`, auth errors, committing to the wrong branch, and `fatal: not a git repository`.

---

## Phase 4 - Automation with GitHub Actions

> Automate testing, deployment, and everything in between using GitHub's built-in CI/CD platform.

---

### Lesson 37 - GitHub Actions - What It Is and How It Works
Event-driven automation in GitHub's cloud. Covers the core concepts (workflow, event, job, step, runner), common trigger events (`push`, `pull_request`, `schedule`, `workflow_dispatch`), where workflow files live, the Actions marketplace, and the difference between CI and CD.

---

### Lesson 38 - Writing Your First Workflow File
Actually write YAML that runs on GitHub. Covers just enough YAML to read a workflow file, the anatomy of a workflow (`name`, `on`, `jobs`, `steps`, `uses`, `run`), a minimal working CI example, pre-built actions (`actions/checkout`, `actions/setup-node`), and reading the Actions logs tab.

---

### Lesson 39 - Secrets and Environment Variables in Actions
Store sensitive values securely in workflows. Covers adding secrets in GitHub Settings, accessing them with `${{ secrets.MY_SECRET }}`, `env:` at workflow/job/step level, the difference between secrets (encrypted) and variables (plain text), GitHub's built-in variables, and masking custom values in logs.

---

### Lesson 40 - Capstone - Fork, Contribute, Open a PR, Set Up Actions
Everything in one real end-to-end project. Fork an open source repo, clone it, create a feature branch, make a meaningful change with good commits, open a PR with a proper description, respond to a review, and add a CI workflow that runs on every PR. Ends with a reflection and a guide to what to learn next.

---

## Lesson index

| # | Lesson | Phase |
|---|--------|-------|
| 01 | What is Git and GitHub - Why Version Control Matters | 1 |
| 02 | Setup and Config - Install Git, Set Name and Email | 1 |
| 03 | SSH Keys - Setup and Connect to GitHub | 1 |
| 04 | Creating Your First Repo - git init | 1 |
| 05 | Staging and Committing - add, commit, status | 1 |
| 06 | Commit Messages - How to Write Good Ones | 1 |
| 07 | git log - Reading Your Commit History | 1 |
| 08 | Git Object Model and HEAD - How Git Stores Everything | 1 |
| 09 | gitignore - What to Exclude and Why | 1 |
| 10 | git diff - Comparing Changes | 1 |
| 11 | Undoing Things - revert, reset, restore | 1 |
| 12 | git reflog - Recovering Anything You've Lost | 1 |
| 13 | git stash - Save Work Without Committing | 1 |
| 14 | Tags - Marking Releases | 1 |
| 15 | Aliases - Shortcuts for Long Commands | 1 |
| 16 | Branching - Create, Switch, List Branches | 1 |
| 17 | Merging Branches | 1 |
| 18 | Merge Conflicts - What They Are and How to Fix Them | 1 |
| 19 | git rebase - What It Is and When to Use It | 1 |
| 20 | Squashing Commits | 1 |
| 21 | Git Workflows - Gitflow, Trunk-Based, Feature Branch | 1 |
| 22 | Remote Repos - origin, push, pull, fetch | 2 |
| 23 | Cloning a Repo | 2 |
| 24 | Forking a Repo | 2 |
| 25 | Pull Requests - Open, Review, Merge | 2 |
| 26 | Code Review - Leaving Comments, Requesting Changes, Approving | 2 |
| 27 | Issues - Create, Label, Close | 2 |
| 28 | Project Boards and Milestones | 2 |
| 29 | README and Markdown - Write a Good README | 2 |
| 30 | Reading Open Source Repos - CONTRIBUTING, Issue Templates, Code of Conduct | 2 |
| 31 | Branch Protection Rules | 3 |
| 32 | Collaborating on a Team Repo | 3 |
| 33 | GitHub CLI - gh Commands | 3 |
| 34 | GitHub Pages - Deploy a Site From a Repo | 3 |
| 35 | Submodules | 3 |
| 36 | Common Errors and Troubleshooting | 3 |
| 37 | GitHub Actions - What It Is and How It Works | 4 |
| 38 | Writing Your First Workflow File | 4 |
| 39 | Secrets and Environment Variables in Actions | 4 |
| 40 | Capstone - Fork, Contribute, Open a PR, Set Up Actions | 4 |

---

## Contributing

Found a mistake or want to suggest an improvement? Open an issue or submit a pull request. This handbook is a living document.

---

*Built to teach Git and GitHub from first principles — no shortcuts, no handwaving.*