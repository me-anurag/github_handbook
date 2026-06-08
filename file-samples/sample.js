/**
 * sample.js — A sample JavaScript file
 * GitHub displays this with JavaScript syntax highlighting
 */

'use strict';

// ── Constants ─────────────────────────────────────────────────────────────────
const GITHUB_API = 'https://api.github.com';
const DEFAULT_HEADERS = {
  'Accept': 'application/vnd.github+json',
  'X-GitHub-Api-Version': '2022-11-28',
};

// ── Utilities ─────────────────────────────────────────────────────────────────

/**
 * Fetches data from the GitHub API.
 * @param {string} endpoint - API endpoint (e.g. '/repos/owner/repo')
 * @param {string} [token] - Optional personal access token
 * @returns {Promise<Object>} Parsed JSON response
 */
async function githubFetch(endpoint, token = null) {
  const headers = { ...DEFAULT_HEADERS };
  if (token) headers['Authorization'] = `Bearer ${token}`;

  const res = await fetch(`${GITHUB_API}${endpoint}`, { headers });

  if (!res.ok) {
    throw new Error(`GitHub API error: ${res.status} ${res.statusText}`);
  }

  return res.json();
}

// ── Classes ───────────────────────────────────────────────────────────────────

class GitHubRepo {
  #owner;
  #name;
  #token;

  constructor(owner, name, token = null) {
    this.#owner = owner;
    this.#name  = name;
    this.#token = token;
  }

  get fullName() {
    return `${this.#owner}/${this.#name}`;
  }

  async getInfo() {
    return githubFetch(`/repos/${this.fullName}`, this.#token);
  }

  async listBranches() {
    return githubFetch(`/repos/${this.fullName}/branches`, this.#token);
  }

  async getCommits(perPage = 10) {
    return githubFetch(
      `/repos/${this.fullName}/commits?per_page=${perPage}`,
      this.#token
    );
  }
}

// ── Main ──────────────────────────────────────────────────────────────────────

async function main() {
  const repo = new GitHubRepo('github', 'docs');

  try {
    const info = await repo.getInfo();
    console.log(`Repo: ${info.full_name}`);
    console.log(`Stars: ${info.stargazers_count.toLocaleString()}`);
    console.log(`Language: ${info.language}`);
    console.log(`Open issues: ${info.open_issues_count}`);
  } catch (err) {
    console.error('Error:', err.message);
  }
}

main();
