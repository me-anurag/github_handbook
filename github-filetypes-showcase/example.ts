// TypeScript — GitHub highlights types, interfaces, and generics distinctly

interface GitHubRepo {
  id: number;
  name: string;
  full_name: string;
  description: string | null;
  stargazers_count: number;
  forks_count: number;
  language: string | null;
  topics: string[];
  license: { spdx_id: string } | null;
  updated_at: string;
}

type SortKey = "stars" | "forks" | "updated";

interface SearchOptions {
  query: string;
  sort?: SortKey;
  limit?: number;
}

async function searchRepositories(
  options: SearchOptions
): Promise<GitHubRepo[]> {
  const { query, sort = "stars", limit = 10 } = options;
  const params = new URLSearchParams({ q: query, sort, per_page: String(limit) });

  const response = await fetch(
    `https://api.github.com/search/repositories?${params}`,
    { headers: { Accept: "application/vnd.github+json" } }
  );

  if (!response.ok) {
    throw new Error(`Search failed: ${response.statusText}`);
  }

  const data = await response.json();
  return data.items as GitHubRepo[];
}

function formatRepo(repo: GitHubRepo): string {
  const stars = repo.stargazers_count.toLocaleString();
  const lang = repo.language ?? "Unknown";
  const license = repo.license?.spdx_id ?? "No license";
  return `${repo.full_name} | ⭐${stars} | ${lang} | ${license}`;
}

// Usage
searchRepositories({ query: "language:typescript", sort: "stars", limit: 5 })
  .then((repos) => repos.forEach((r) => console.log(formatRepo(r))))
  .catch(console.error);
