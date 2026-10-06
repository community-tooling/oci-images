FROM busybox:1.38.0@sha256:fd7dc98638c8e305f4dc34e979f1c0fdfdcaeb0fbf8fcff77ae834b6da3d7e6e AS extract

# renovate: datasource=github-releases depName=just-containers/s6-overlay
ARG S6_OVERLAY_VERSION=v3.2.0.2

# https://github.com/just-containers/s6-overlay#using-cmd
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz

FROM ghcr.io/paperless-ngx/paperless-ngx:3.3.0@sha256:6b94799bc769a063b3340cc5847402e626d4d91d29a295a8e747f8e9bead4207

# Replace the paperless s6 configuration with the default configuration.
# This is needed so that paperless does not start
RUN rm -r /etc/s6-overlay/s6-rc.d/*
COPY --from=extract /etc/s6-overlay/s6-rc.d/ /etc/s6-overlay/s6-rc.d/

COPY export /usr/local/bin/export
CMD ["/usr/local/bin/export"]
