# Bun hang under arm64 emulation: reproduction

A Vite 8 + Vue + Tailwind CSS 4 + daisyUI project with 500 generated components.
`vite build` sometimes stops after `/*! 🌼 daisyUI 5.6.14 */` and never finishes.

## Requirements

- An `x86_64` Linux host with Docker and Buildx.
- No arm64 emulator registered on the host (`/proc/sys/fs/binfmt_misc/qemu-aarch64` must not exist), so that BuildKit uses its embedded QEMU 10.2.3.

## Run

```sh
docker buildx create --name qemu-repro --driver docker-container \
  --driver-opt image=moby/buildkit:v0.33.1
docker buildx build --builder qemu-repro --platform linux/arm64 --progress=plain \
  --build-arg TIMEOUT_SECONDS=180 .
```

The build runs `bun run build` repeatedly, `ATTEMPTS` times (default 20). Each attempt that exceeds `TIMEOUT_SECONDS` counts as a hang. The output ends with `RESULT: <hangs> of <attempts> attempts hung`, and the image build fails if any attempt hung.

## Options

| Build argument | Default | Purpose |
| --- | --- | --- |
| `BUN_IMAGE` | `oven/bun:1.4.4-debian` | Bun version under test |
| `ATTEMPTS` | `20` | Number of builds |
| `TIMEOUT_SECONDS` | `60` | Time after which a build counts as hung |

A healthy build takes less than 1 minute, make sure to use `TIMEOUT_SECONDS` well above the healthy build duration (use bun 1.3 for baseline)

`Dockerfile.local` runs the same loop through Debian's `qemu-user` explicitly (`docker build --platform linux/arm64 -f Dockerfile.local .`).
