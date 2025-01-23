# Base image
FROM hotio/lidarr:pr-plugins-2.9.0.4506

# Install bashio
RUN curl -sSLf https://github.com/hassio-addons/bashio/releases/download/v0.15.0/bashio-0.15.0-linux-x86_64.tar.gz | tar xz -C /usr/local/bin

# Copy root filesystem (if needed)
COPY rootfs /

# Copy the run.sh script and make it executable
COPY run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# Set the entrypoint to the run.sh script
ENTRYPOINT ["/usr/local/bin/run.sh"]

# Labels
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
