# Dockerfile — GitHub highlights FROM, RUN, COPY, ENV, EXPOSE, CMD instructions
# Multi-stage build for a Node.js + Python application

# ── Stage 1: Install Python deps ──────────────────────────────
FROM python:3.11-slim AS python-base

WORKDIR /app/python

COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# ── Stage 2: Build Node.js frontend ───────────────────────────
FROM node:20-alpine AS node-builder

WORKDIR /app

COPY package*.json ./
RUN npm ci --omit=dev

COPY . .
RUN npm run build

# ── Stage 3: Production image ─────────────────────────────────
FROM python:3.11-slim AS production

# Security: run as non-root
RUN groupadd --gid 1001 appgroup \
    && useradd --uid 1001 --gid 1001 --no-create-home appuser

WORKDIR /app

# Copy built assets from earlier stages
COPY --from=python-base /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=node-builder /app/dist ./dist
COPY --from=node-builder /app/src ./src

ENV NODE_ENV=production \
    PORT=8080 \
    PYTHONUNBUFFERED=1

EXPOSE 8080

HEALTHCHECK --interval=30s --timeout=5s --start-period=10s --retries=3 \
  CMD curl -f http://localhost:8080/health || exit 1

USER appuser
CMD ["python", "-m", "uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8080"]
