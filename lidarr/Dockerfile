ARG BUILD_FROM=hotio/lidarr:pr-plugins-2.9.5.4543
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Copy root filesystem
COPY rootfs /

# Build arguments
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
# Copy root filesystem
COPY rootfs /

# Default command
#CMD [ "/opt/bin/Lidarr" ]
