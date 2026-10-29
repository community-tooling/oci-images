FROM busybox:1.38.0@sha256:a46257e06c82ad85242d0d38077d0a52d9896389ca60a1a59d3463db586e5fa4 AS extract

# renovate: datasource=github-releases depName=just-containers/s6-overlay
ARG S6_OVERLAY_VERSION=v3.2.0.2

# https://github.com/just-containers/s6-overlay#using-cmd
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz

FROM ghcr.io/paperless-ngx/paperless-ngx:3.3.4@sha256:9bc6e8248891bcfa6f52fffe8b81e4ea8cae75790c3ec1b9906961a7ba55c969

# Replace the paperless s6 configuration with the default configuration.
# This is needed so that paperless does not start
RUN rm -r /etc/s6-overlay/s6-rc.d/*
COPY --from=extract /etc/s6-overlay/s6-rc.d/ /etc/s6-overlay/s6-rc.d/

COPY export /usr/local/bin/export
CMD ["/usr/local/bin/export"]
