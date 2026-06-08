"""
sample.py — A sample Python file
GitHub displays this with Python syntax highlighting
"""

from __future__ import annotations
from dataclasses import dataclass, field
from typing import Optional
import subprocess
import sys


# ── Data Models ───────────────────────────────────────────────────────────────

@dataclass
class Commit:
    sha: str
    message: str
    author: str
    date: str

    def short_sha(self) -> str:
        return self.sha[:7]

    def __str__(self) -> str:
        return f"{self.short_sha()} {self.author}: {self.message}"


@dataclass
class Branch:
    name: str
    commits: list[Commit] = field(default_factory=list)
    is_current: bool = False

    def latest_commit(self) -> Optional[Commit]:
        return self.commits[0] if self.commits else None


# ── Git Helper ────────────────────────────────────────────────────────────────

class GitRepo:
    def __init__(self, path: str = ".") -> None:
        self.path = path

    def run(self, *args: str) -> str:
        result = subprocess.run(
            ["git", *args],
            cwd=self.path,
            capture_output=True,
            text=True,
        )
        if result.returncode != 0:
            raise RuntimeError(result.stderr.strip())
        return result.stdout.strip()

    def current_branch(self) -> str:
        return self.run("branch", "--show-current")

    def log(self, n: int = 10) -> list[str]:
        output = self.run("log", f"-{n}", "--oneline")
        return output.splitlines()

    def status(self) -> str:
        return self.run("status", "--short")


# ── Main ──────────────────────────────────────────────────────────────────────

def main() -> None:
    repo = GitRepo()

    try:
        branch = repo.current_branch()
        print(f"Current branch: {branch}")

        print("\nRecent commits:")
        for line in repo.log(5):
            print(f"  {line}")

        status = repo.status()
        if status:
            print(f"\nUncommitted changes:\n{status}")
        else:
            print("\nWorking tree is clean.")

    except RuntimeError as e:
        print(f"Git error: {e}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
