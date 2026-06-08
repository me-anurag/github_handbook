# Sample Dockerfile
# GitHub displays this with Dockerfile syntax highlighting

# ── Base image ────────────────────────────────────────────────────────────────
FROM python:3.12-slim AS base

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    PIP_DISABLE_PIP_VERSION_CHECK=1

WORKDIR /app

# ── Dependencies stage ────────────────────────────────────────────────────────
FROM base AS deps

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# ── Development stage ─────────────────────────────────────────────────────────
FROM deps AS development

RUN pip install pytest ruff mypy

COPY . .

CMD ["python", "-m", "pytest"]

# ── Production stage ──────────────────────────────────────────────────────────
FROM deps AS production

# Create non-root user for security
RUN addgroup --system app && \
    adduser  --system --group app

COPY --chown=app:app . .

USER app

EXPOSE 8000

HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:8000/health || exit 1

CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
