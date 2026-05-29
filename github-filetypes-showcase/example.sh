#!/usr/bin/env bash
# Shell script — GitHub highlights keywords, variables, and commands
# Usage: ./example.sh [--dry-run] <environment>

set -euo pipefail

# ── Configuration ────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_FILE="${SCRIPT_DIR}/deploy.log"
ENVIRONMENTS=("staging" "production")
DRY_RUN=false

# ── Colours ──────────────────────────────────────────────────
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log()  { echo -e "${GREEN}[INFO]${NC}  $*" | tee -a "$LOG_FILE"; }
warn() { echo -e "${YELLOW}[WARN]${NC}  $*" | tee -a "$LOG_FILE"; }
err()  { echo -e "${RED}[ERROR]${NC} $*" | tee -a "$LOG_FILE" >&2; }

# ── Argument parsing ──────────────────────────────────────────
parse_args() {
  while [[ $# -gt 0 ]]; do
    case $1 in
      --dry-run) DRY_RUN=true; shift ;;
      staging|production) ENV="$1"; shift ;;
      *) err "Unknown argument: $1"; exit 1 ;;
    esac
  done

  if [[ -z "${ENV:-}" ]]; then
    err "Environment required: staging | production"
    echo "Usage: $0 [--dry-run] <environment>"
    exit 1
  fi
}

# ── Main deploy ───────────────────────────────────────────────
deploy() {
  log "Starting deployment to ${ENV}"
  [[ "$DRY_RUN" == true ]] && warn "Dry-run mode — no changes will be made"

  local steps=("build" "test" "push" "migrate" "reload")
  for step in "${steps[@]}"; do
    log "  → ${step}..."
    [[ "$DRY_RUN" == false ]] && sleep 0.2
  done

  log "Deployment to ${ENV} complete ✓"
}

parse_args "$@"
deploy
