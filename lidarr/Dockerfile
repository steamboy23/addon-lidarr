ARG BUILD_FROM=hotio/lidarr:pr-plugins-2.9.0.4506
FROM ${BUILD_FROM}

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Arguments with default values
ARG BUILD_ARCH=amd64
ARG LIDARR_VERSION=2.9.0.4506
ARG BUILD_VERSION=dev

# Set environment
ENV XDG_CONFIG_HOME="/config/xdg"

# Install dependencies and Lidarr
RUN set -x && \
  apk add --no-cache icu-libs sqlite-libs xmlstarlet && \
  if [ "${BUILD_ARCH}" = "aarch64" ]; then LIDARR_ARCH="arm64"; \
  elif [ "${BUILD_ARCH}" = "amd64" ]; then LIDARR_ARCH="x64"; \
  elif [ "${BUILD_ARCH}" = "armv7" ]; then LIDARR_ARCH="arm"; \
  else echo "Unsupported architecture"; exit 1; fi && \
  curl -J -L -o /tmp/lidarr.tar.gz \
      "https://github.com/Lidarr/Lidarr/releases/download/v${LIDARR_VERSION}/Lidarr.master.${LIDARR_VERSION}.linux-musl-core-${LIDARR_ARCH}.tar.gz" && \
  mkdir -p /opt/bin && \
  tar zxvf /tmp/lidarr.tar.gz --strip 1 -C /opt/bin && \
  echo -e "UpdateMethod=docker\nBranch=master\nPackageVersion=${BUILD_VERSION}\nPackageAuthor=Home Assistant Community Add-ons" > /opt/package_info && \
  rm -f -r /tmp/* /opt/bin/Lidarr.Update

# Copy root filesystem
COPY rootfs /

# Default command
CMD [ "/opt/bin/Lidarr" ]
