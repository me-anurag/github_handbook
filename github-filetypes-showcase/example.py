#!/usr/bin/env python3
"""
GitHub file types showcase — Python example.
GitHub highlights decorators, f-strings, type hints, and class definitions.
"""

from __future__ import annotations
from dataclasses import dataclass, field
from typing import Optional
import json
import urllib.request
import urllib.error


@dataclass
class Repository:
    name: str
    full_name: str
    stars: int
    forks: int
    language: Optional[str]
    description: Optional[str] = None
    topics: list[str] = field(default_factory=list)

    @classmethod
    def from_api(cls, data: dict) -> "Repository":
        return cls(
            name=data["name"],
            full_name=data["full_name"],
            stars=data["stargazers_count"],
            forks=data["forks_count"],
            language=data.get("language"),
            description=data.get("description"),
            topics=data.get("topics", []),
        )

    def summary(self) -> str:
        lang = self.language or "Unknown"
        return f"{self.full_name} | ⭐{self.stars:,} | 🍴{self.forks:,} | {lang}"


def fetch_repo(owner: str, repo: str) -> Repository:
    url = f"https://api.github.com/repos/{owner}/{repo}"
    req = urllib.request.Request(
        url, headers={"Accept": "application/vnd.github+json"}
    )
    with urllib.request.urlopen(req) as response:
        data = json.loads(response.read())
    return Repository.from_api(data)


def main() -> None:
    repos_to_check = [
        ("python", "cpython"),
        ("psf", "requests"),
        ("tiangolo", "fastapi"),
    ]

    print("GitHub Repository Stats")
    print("=" * 50)
    for owner, repo in repos_to_check:
        try:
            r = fetch_repo(owner, repo)
            print(r.summary())
            if r.topics:
                print(f"  Topics: {', '.join(r.topics[:5])}")
        except urllib.error.HTTPError as e:
            print(f"  Error fetching {owner}/{repo}: {e.code}")
    print("=" * 50)


if __name__ == "__main__":
    main()
