FROM debian:13-slim

ENV DEBIAN_FRONTEND=noninteractive

# Install a single extra package and clean up
RUN apt-get update \
 && apt-get install -y --no-install-recommends ca-certificates \
 && rm -rf /var/lib/apt/lists/*

CMD ["bash"]