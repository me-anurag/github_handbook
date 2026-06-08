#!/bin/bash
# sample.sh — A sample shell script
# GitHub displays this with bash syntax highlighting

set -euo pipefail

# ── Config ────────────────────────────────────────────────────────────────────
REPO_NAME="github-handbook"
BRANCH="main"
REMOTE="origin"

# ── Colors ────────────────────────────────────────────────────────────────────
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# ── Functions ─────────────────────────────────────────────────────────────────
log_info()    { echo -e "${GREEN}[INFO]${NC} $1"; }
log_warn()    { echo -e "${YELLOW}[WARN]${NC} $1"; }
log_error()   { echo -e "${RED}[ERROR]${NC} $1"; exit 1; }

check_git() {
    if ! command -v git &> /dev/null; then
        log_error "Git is not installed. Install it from https://git-scm.com"
    fi
    log_info "Git found: $(git --version)"
}

setup_repo() {
    log_info "Setting up $REPO_NAME..."

    if [ -d ".git" ]; then
        log_warn "Already a git repo. Skipping init."
    else
        git init
        git checkout -b "$BRANCH"
        log_info "Initialized new repo on branch: $BRANCH"
    fi
}

create_initial_commit() {
    if [ ! -f "README.md" ]; then
        echo "# $REPO_NAME" > README.md
        git add README.md
        git commit -m "feat: initial commit"
        log_info "Created initial commit"
    fi
}

# ── Main ──────────────────────────────────────────────────────────────────────
main() {
    log_info "Starting setup..."
    check_git
    setup_repo
    create_initial_commit
    log_info "Done! Run: git remote add $REMOTE <your-repo-url>"
}

main "$@"
