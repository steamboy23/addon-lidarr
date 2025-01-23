# Base image
FROM hotio/lidarr:pr-plugins-2.9.0.4506

# Install bashio
RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "x86_64" ]; then \
        curl -sSLf https://github.com/hassio-addons/bashio/releases/download/v0.15.0/bashio-0.15.0-linux-x86_64.tar.gz | tar xz -C /usr/local/bin; \
    elif [ "$ARCH" = "aarch64" ]; then \
        curl -sSLf https://github.com/hassio-addons/bashio/releases/download/v0.15.0/bashio-0.15.0-linux-aarch64.tar.gz | tar xz -C /usr/local/bin; \
    elif [ "$ARCH" = "armv7l" ]; then \
        curl -sSLf https://github.com/hassio-addons/bashio/releases/download/v0.15.0/bashio-0.15.0-linux-armv7.tar.gz | tar xz -C /usr/local/bin; \
    else \
        echo "Unsupported architecture $ARCH"; exit 1; \
    fi

# Optional: Copy root filesystem (if required for your add-on)
# COPY rootfs /

# Labels (modify as needed)
LABEL \
    io.hass.name="Lidarr" \
    io.hass.description="A Lidarr music manager for Home Assistant" \
    io.hass.arch="amd64" \
    io.hass.type="addon" \
    io.hass.version="pr-plugins-2.9.0.4506" \
    maintainer="Your Name <your@email.com>" \
    org.opencontainers.image.title="Lidarr" \
    org.opencontainers.image.description="A Lidarr music manager" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/yourusername/addon-lidarr" \
    org.opencontainers.image.documentation="https://github.com/yourusername/addon-lidarr/blob/main/README.md"
