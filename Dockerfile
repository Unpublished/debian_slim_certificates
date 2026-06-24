FROM debian:13-slim@sha256:f3da28155e2e26086464eba22cd235b22200b7143e8f3e1811bf359e3114bf96

ENV DEBIAN_FRONTEND=noninteractive

# Install a single extra package and clean up
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates \
 && rm -rf /var/lib/apt/lists/*

CMD ["bash"]