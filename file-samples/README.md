# file-samples

A working example of every file type GitHub supports — push this folder to your repo and click each file to see exactly how GitHub renders it.

---

## How to use this folder

1. Push this folder to any GitHub repo
2. Navigate to `file-samples/` on GitHub
3. Click any file — GitHub renders it right in the browser
4. Compare what you see with the description below

---

## File Index

### Markup & Text

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.md`](./sample.md) | Formatted document | Headings, tables, task lists, code blocks all rendered |
| [`sample.txt`](./sample.txt) | Raw plain text | No formatting — exactly as written |
| [`sample.html`](./sample.html) | Source code | GitHub shows HTML as **source**, not a live page |

---

### Data Files

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.csv`](./sample.csv) | Interactive table | Sortable, searchable — up to 512 KB |
| [`sample.tsv`](./sample.tsv) | Interactive table | Same as CSV but tab-separated |
| [`sample.json`](./sample.json) | Syntax-highlighted + collapsible tree | Click the triangles to collapse nested objects |
| [`sample.geojson`](./sample.geojson) | Interactive Leaflet map | Pins and lines plotted on a real map |

---

### Images

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.png`](./sample.png) | Inline image | Lossless — crisp at any zoom |
| [`sample.jpg`](./sample.jpg) | Inline image | Lossy — notice slight compression artifacts |
| [`sample.gif`](./sample.gif) | Animated image | Plays automatically in the browser |
| [`sample.svg`](./sample.svg) | Vector image | Perfectly sharp at any size — zoom in! |

---

### Documents & Notebooks

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.pdf`](./sample.pdf) | Inline PDF viewer | Scroll pages without downloading |
| [`sample.ipynb`](./sample.ipynb) | Full notebook | Cells, outputs, and Markdown all rendered |

---

### Source Code

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.py`](./sample.py) | Python with syntax highlighting | Keywords, strings, comments all colored |
| [`sample.js`](./sample.js) | JavaScript with syntax highlighting | Classes, async/await, private fields |
| [`sample.sh`](./sample.sh) | Bash with syntax highlighting | Functions, variables, conditionals |
| [`sample.css`](./sample.css) | CSS with syntax highlighting | Custom properties, selectors, values |
| [`sample.sql`](./sample.sql) | SQL with syntax highlighting | Schema, indexes, queries |

---

### Config & DevOps

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.yml`](./sample.yml) | YAML with syntax highlighting | Keys, lists, nested objects colored |
| [`sample.toml`](./sample.toml) | TOML with syntax highlighting | Sections, keys, values colored |
| [`.gitignore`](./.gitignore) | Plain text with highlighting | Patterns, comments colored |
| [`.editorconfig`](./.editorconfig) | Plain text | Coding style rules |
| [`Dockerfile`](./Dockerfile) | Dockerfile highlighting | Instructions like `FROM`, `RUN`, `COPY` colored |
| [`.github/workflows/ci.yml`](./.github/workflows/ci.yml) | YAML highlighting | GitHub Actions pipeline definition |
| [`requirements.txt`](./requirements.txt) | Plain text | Python dependencies |

---

### 3D Model

| File | Renders As | What to notice |
|------|------------|----------------|
| [`sample.stl`](./sample.stl) | Interactive 3D viewer | Drag to rotate, scroll to zoom |

---

### Special GitHub Files

These files are recognized by GitHub and get special behavior beyond just rendering:

| File | Special behavior |
|------|-----------------|
| [`CONTRIBUTING.md`](./CONTRIBUTING.md) | Linked automatically when opening an Issue or PR |
| [`CHANGELOG.md`](./CHANGELOG.md) | Community convention — no special rendering, but expected by users |
| [`LICENSE`](./LICENSE) | GitHub detects the license type and shows it in the repo sidebar |
| [`CODEOWNERS`](./CODEOWNERS) | Auto-requests review from listed owners when matched files change |
| [`.github/PULL_REQUEST_TEMPLATE.md`](./.github/PULL_REQUEST_TEMPLATE.md) | Pre-fills the PR description box for every new PR |
| [`.github/ISSUE_TEMPLATE/`](./.github/ISSUE_TEMPLATE/) | Shown as options when opening a new issue |

---

## Files NOT included (and why)

| Type | Reason |
|------|--------|
| `.webp` / `.avif` | Render as images — same as PNG/JPG, nothing new to see |
| `.docx` / `.xlsx` | Download only — GitHub cannot render Office files |
| `.zip` / `.tar.gz` | Download only |
| `.mp4` / `.mp3` | Download only — no media player in GitHub UI |
| `.stl` (already included) | ✅ Included — 3D viewer is one of GitHub's coolest features |

---

> **Tip:** After pushing, view this folder at `github.com/yourusername/github-handbook/tree/main/file-samples` and click through each file to see it rendered.
