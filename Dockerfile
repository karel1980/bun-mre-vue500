ARG BUN_IMAGE=oven/bun:1.4.4-debian
FROM ${BUN_IMAGE}
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile
COPY . .
ARG ATTEMPTS=20
ARG TIMEOUT_SECONDS=60
RUN bun --version; hangs=0; \
    for i in $(seq 1 "$ATTEMPTS"); do \
      start=$(date +%s); \
      if timeout -k 5 "$TIMEOUT_SECONDS" bun run build >/tmp/build.log 2>&1; then r=ok; else r=HANG; hangs=$((hangs + 1)); tail -n 3 /tmp/build.log; fi; \
      echo "attempt $i: $r after $(($(date +%s) - start))s"; \
    done; \
    echo "RESULT: $hangs of $ATTEMPTS attempts hung"; \
    test "$hangs" -eq 0
