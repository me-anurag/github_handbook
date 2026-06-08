-- sample.sql — A sample SQL file
-- GitHub displays this with SQL syntax highlighting

-- ── Schema ────────────────────────────────────────────────────────────────────

CREATE TABLE users (
    id         SERIAL PRIMARY KEY,
    username   VARCHAR(50)  NOT NULL UNIQUE,
    email      VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

CREATE TABLE repositories (
    id          SERIAL PRIMARY KEY,
    owner_id    INTEGER      NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    is_private  BOOLEAN      NOT NULL DEFAULT FALSE,
    stars       INTEGER      NOT NULL DEFAULT 0,
    forks       INTEGER      NOT NULL DEFAULT 0,
    language    VARCHAR(50),
    created_at  TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    UNIQUE (owner_id, name)
);

CREATE TABLE commits (
    id         SERIAL PRIMARY KEY,
    repo_id    INTEGER      NOT NULL REFERENCES repositories(id) ON DELETE CASCADE,
    author_id  INTEGER      NOT NULL REFERENCES users(id),
    sha        CHAR(40)     NOT NULL UNIQUE,
    message    TEXT         NOT NULL,
    created_at TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

-- ── Indexes ───────────────────────────────────────────────────────────────────

CREATE INDEX idx_repos_owner    ON repositories(owner_id);
CREATE INDEX idx_commits_repo   ON commits(repo_id);
CREATE INDEX idx_commits_author ON commits(author_id);
CREATE INDEX idx_commits_sha    ON commits(sha);

-- ── Queries ───────────────────────────────────────────────────────────────────

-- Top 10 most starred repos
SELECT
    u.username AS owner,
    r.name,
    r.stars,
    r.language,
    r.created_at::DATE AS created
FROM repositories r
JOIN users u ON u.id = r.owner_id
WHERE r.is_private = FALSE
ORDER BY r.stars DESC
LIMIT 10;

-- Commit activity per user (last 30 days)
SELECT
    u.username,
    COUNT(c.id)          AS commit_count,
    MAX(c.created_at)    AS last_commit
FROM commits c
JOIN users u ON u.id = c.author_id
WHERE c.created_at >= NOW() - INTERVAL '30 days'
GROUP BY u.username
ORDER BY commit_count DESC;

-- Repos with no commits
SELECT r.name, u.username
FROM repositories r
JOIN users u ON u.id = r.owner_id
LEFT JOIN commits c ON c.repo_id = r.id
WHERE c.id IS NULL;
