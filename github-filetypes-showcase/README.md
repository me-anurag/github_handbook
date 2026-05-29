# 📁 GitHub File Types Showcase

A reference repository demonstrating every major file type supported by GitHub — how they render, what they're used for, and how GitHub behaves with each.

---

## 📋 File Index

| File | Type | GitHub Renders? | Primary Use |
|------|------|----------------|-------------|
| [`README.md`](README.md) | Markdown | ✅ Rendered | Repo documentation |
| [`example.md`](example.md) | Markdown | ✅ Rendered | Rich text, tables, code |
| [`example.txt`](example.txt) | Plain Text | ✅ Raw display | Simple notes, logs |
| [`example.json`](example.json) | JSON | ✅ Syntax highlighted | Config, data exchange |
| [`example.yaml`](example.yaml) | YAML | ✅ Syntax highlighted | Config files, CI/CD |
| [`example.toml`](example.toml) | TOML | ✅ Syntax highlighted | Config (Rust, Python) |
| [`example.xml`](example.xml) | XML | ✅ Syntax highlighted | Config, data, Android |
| [`example.csv`](example.csv) | CSV | ✅ Rendered as table | Tabular data |
| [`example.html`](example.html) | HTML | ✅ Syntax highlighted | Web markup |
| [`example.css`](example.css) | CSS | ✅ Syntax highlighted | Styling |
| [`example.js`](example.js) | JavaScript | ✅ Syntax highlighted | Web scripting |
| [`example.ts`](example.ts) | TypeScript | ✅ Syntax highlighted | Typed JavaScript |
| [`example.py`](example.py) | Python | ✅ Syntax highlighted | Scripts, ML, backend |
| [`example.sh`](example.sh) | Shell Script | ✅ Syntax highlighted | Automation, CLI |
| [`example.Dockerfile`](example.Dockerfile) | Dockerfile | ✅ Syntax highlighted | Container builds |
| [`example.ipynb`](example.ipynb) | Jupyter Notebook | ✅ Rendered notebook | Data science |
| [`example.svg`](example.svg) | SVG | ✅ Rendered as image | Vector graphics |
| [`example.geojson`](example.geojson) | GeoJSON | ✅ Rendered as map | Geographic data |
| [`example.mermaid`](example.mermaid) | Mermaid | ⚠️ In `.md` only | Diagrams in markdown |
| [`.gitignore`](.gitignore) | Gitignore | ✅ Syntax highlighted | Ignore rules |
| [`example.env`](example.env) | Env File | ✅ Raw display | Environment variables |
| [`example.go`](example.go) | Go | ✅ Syntax highlighted | Systems programming |
| [`example.rs`](example.rs) | Rust | ✅ Syntax highlighted | Systems programming |
| [`example.java`](example.java) | Java | ✅ Syntax highlighted | Enterprise, Android |
| [`example.cpp`](example.cpp) | C++ | ✅ Syntax highlighted | Systems, performance |

---

## 📖 File Type Details

### 📝 Markdown (`.md`)
**Renders:** Full HTML rendering with headings, bold, italic, tables, code blocks, images, links.
**Behavior:** GitHub auto-renders `README.md` in every directory. Other `.md` files render when clicked.
**Use for:** Documentation, wikis, changelogs, guides.
**Tip:** GitHub Flavored Markdown (GFM) supports task lists `- [x]`, `@mentions`, `#issue-links`, and mermaid diagrams inside ` ```mermaid ` blocks.

---

### 📄 Plain Text (`.txt`)
**Renders:** Displayed as-is with a monospace font. No formatting.
**Behavior:** No syntax highlighting, no rendering. Just raw characters.
**Use for:** Licenses, simple notes, raw logs, requirements lists.

---

### 🗂️ JSON (`.json`)
**Renders:** Syntax highlighted. Collapsible tree view for large files.
**Behavior:** Color-coded keys, strings, numbers, booleans.
**Use for:** API responses, configuration, `package.json`, `tsconfig.json`.
**Tip:** GitHub will warn about invalid JSON syntax.

---

### ⚙️ YAML (`.yaml` / `.yml`)
**Renders:** Syntax highlighted.
**Behavior:** Indentation-sensitive — GitHub highlights structure visually.
**Use for:** GitHub Actions workflows (`.github/workflows/`), Docker Compose, Kubernetes manifests, config files.
**Tip:** `.github/workflows/*.yml` files are automatically recognized as GitHub Actions.

---

### 🦀 TOML (`.toml`)
**Renders:** Syntax highlighted.
**Behavior:** Similar to YAML but uses `[sections]` and `key = value` pairs.
**Use for:** Rust's `Cargo.toml`, Python's `pyproject.toml`, Hugo config.

---

### 🔖 XML (`.xml`)
**Renders:** Syntax highlighted with tag coloring.
**Behavior:** Tree structure highlighted.
**Use for:** Android `AndroidManifest.xml`, Maven `pom.xml`, SVG (XML-based), RSS feeds.

---

### 📊 CSV (`.csv`)
**Renders:** ✨ GitHub renders CSV as a sortable, searchable table — one of its best features.
**Behavior:** Click any column header to sort. Search bar filters rows live.
**Use for:** Datasets, export data, lookup tables, test fixtures.
**Tip:** TSV (`.tsv`) also renders as a table.

---

### 🌐 HTML (`.html`)
**Renders:** Syntax highlighted source code — NOT rendered as a webpage.
**Behavior:** GitHub shows the raw markup, not the visual output. Use GitHub Pages to render it live.
**Use for:** Web templates, email templates, static pages.

---

### 🎨 CSS (`.css`)
**Renders:** Syntax highlighted with property/value coloring.
**Use for:** Stylesheets, design tokens, component styles.

---

### ⚡ JavaScript (`.js`) / TypeScript (`.ts`)
**Renders:** Syntax highlighted with keyword and function coloring.
**Behavior:** GitHub detects the language and applies appropriate grammar.
**Use for:** Frontend logic, Node.js scripts, utilities.
**Tip:** TypeScript files show type annotations highlighted distinctly.

---

### 🐍 Python (`.py`)
**Renders:** Syntax highlighted.
**Behavior:** Decorators, f-strings, type hints all highlighted correctly.
**Use for:** Scripts, ML models, data pipelines, web backends.

---

### 🐚 Shell Script (`.sh`)
**Renders:** Syntax highlighted with command/variable distinction.
**Behavior:** Shebang line (`#!/bin/bash`) recognized.
**Use for:** CI scripts, setup automation, deployment scripts.
**Tip:** Make scripts executable with `chmod +x` — GitHub shows file permissions in metadata.

---

### 🐳 Dockerfile
**Renders:** Syntax highlighted — instructions like `FROM`, `RUN`, `COPY` are colored.
**Behavior:** GitHub recognizes files named exactly `Dockerfile` (no extension) or `*.Dockerfile`.
**Use for:** Container image definitions, multi-stage builds.

---

### 📓 Jupyter Notebook (`.ipynb`)
**Renders:** ✨ Full notebook rendering — markdown cells formatted, code cells with output, inline plots.
**Behavior:** One of GitHub's most powerful renderers. Shows executed outputs including matplotlib charts.
**Use for:** Data science, ML experiments, tutorials, exploratory analysis.
**Tip:** Large notebooks (>10MB) won't render — use nbviewer.jupyter.org instead.

---

### 🖼️ SVG (`.svg`)
**Renders:** ✨ Rendered as an actual image — you see the vector graphic, not the XML source.
**Behavior:** Click "Raw" to see the XML. Animated SVGs play inline.
**Use for:** Logos, badges, icons, diagrams, illustrations.
**Warning:** GitHub sanitizes SVGs — external references and scripts are stripped for security.

---

### 🗺️ GeoJSON (`.geojson` / `.json` with geo data)
**Renders:** ✨ Rendered as an interactive map (powered by Leaflet/OpenStreetMap).
**Behavior:** Points, lines, and polygons render as map overlays. Click features for properties.
**Use for:** Geographic data, boundary files, location datasets, map visualizations.

---

### 📐 Mermaid Diagrams
**Renders:** Inside Markdown files only, using ` ```mermaid ` fenced blocks.
**Behavior:** Flowcharts, sequence diagrams, ER diagrams, Gantt charts all render as images.
**Use for:** Architecture diagrams, workflows, ER models embedded in docs.
**Example in `example.md`.**

---

### 🚫 `.gitignore`
**Renders:** Syntax highlighted — patterns are color-coded, comments dimmed.
**Behavior:** GitHub recognizes it as a gitignore file regardless of location.
**Use for:** Excluding `node_modules/`, build artifacts, secrets, OS files from version control.

---

### 🔐 `.env` Files
**Renders:** Raw display, no special highlighting.
**Behavior:** GitHub treats it like a plain text file.
**Use for:** Local environment variable templates (commit `.env.example`, never `.env` with real secrets).
**⚠️ Warning:** Never commit real API keys or passwords. Use GitHub Secrets for CI/CD.

---

### 🔵 Go (`.go`), Rust (`.rs`), Java (`.java`), C++ (`.cpp`)
**Renders:** All syntax highlighted with language-specific grammar.
**Behavior:** GitHub's Linguist library detects language automatically based on extension and content.
**Use for:** Systems programming, high-performance applications, enterprise software.

---

## 🧠 GitHub Rendering Rules

1. **File size limit:** Files over ~10MB are shown as raw. Notebooks over ~5MB won't render.
2. **Language detection:** GitHub uses [Linguist](https://github.com/github-linguist/linguist) — content + extension determine language.
3. **Security:** HTML, SVG, and notebooks have scripts stripped. GitHub Pages is needed for actual execution.
4. **Binary files:** Images (`.png`, `.jpg`, `.gif`, `.webp`) render inline. PDFs show a preview. Other binaries show size only.
5. **Diffs:** GitHub can diff most text formats. Notebooks have a rich diff view.
6. **README auto-render:** Any directory with a `README.md`, `README.txt`, or `README` gets it rendered below the file list.

---

## 🗂️ Repository Language Stats

GitHub calculates the language breakdown shown on your repo page based on byte count of detected source files. Vendored files, docs, and config are excluded by default. Override with `.gitattributes`:

```
*.md linguist-documentation=true
vendor/ linguist-vendored=true
*.json linguist-generated=true
```

---

*Built as a reference for developers learning what GitHub can render and display.*
