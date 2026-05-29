// JavaScript — GitHub highlights keywords, strings, functions, and comments

/**
 * Fetches repository data from the GitHub API
 * @param {string} owner - Repository owner
 * @param {string} repo - Repository name
 * @returns {Promise<Object>} Repository metadata
 */
async function fetchRepo(owner, repo) {
  const url = `https://api.github.com/repos/${owner}/${repo}`;
  const res = await fetch(url, {
    headers: { Accept: "application/vnd.github+json" },
  });

  if (!res.ok) {
    throw new Error(`GitHub API error: ${res.status}`);
  }

  return res.json();
}

/**
 * Formats a number with K/M suffix
 * @param {number} n
 * @returns {string}
 */
const formatCount = (n) => {
  if (n >= 1_000_000) return `${(n / 1_000_000).toFixed(1)}M`;
  if (n >= 1_000) return `${(n / 1_000).toFixed(1)}K`;
  return String(n);
};

// Main execution
(async () => {
  try {
    const data = await fetchRepo("github", "linguist");
    console.log(`⭐ Stars: ${formatCount(data.stargazers_count)}`);
    console.log(`🍴 Forks: ${formatCount(data.forks_count)}`);
    console.log(`📝 Language: ${data.language}`);
    console.log(`📅 Updated: ${new Date(data.updated_at).toLocaleDateString()}`);
  } catch (err) {
    console.error("Failed to fetch repo:", err.message);
    process.exit(1);
  }
})();
