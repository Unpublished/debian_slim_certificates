FROM debian:13-slim@sha256:e27e3dbef3b2064bed82f2fef343c0d02a4b8d5675e5b2c511883442e001630d

ENV DEBIAN_FRONTEND=noninteractive

# Install a single extra package and clean up
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates \
 && rm -rf /var/lib/apt/lists/*

CMD ["bash"]