# Lesson 38: Writing Your First Workflow File

## What this lesson covers

Actually writing YAML that runs in GitHub Actions.

### Intuition to build
- A workflow file is just YAML that describes a sequence of shell commands
- The indentation in YAML is load-bearing - one wrong space breaks everything
- Start simple (echo hello world) then build up to something real

### What to include
- YAML basics: key-value, lists, indentation (just enough to read a workflow)
- Anatomy of a workflow file: `name`, `on`, `jobs`, `steps`, `uses`, `run`
- A minimal working example: run tests on every push
- Using pre-built actions: `actions/checkout@v4`, `actions/setup-node@v4`
- Reading the Actions tab on GitHub - logs, reruns, failed steps
- Common patterns: install deps -> run tests -> report result
