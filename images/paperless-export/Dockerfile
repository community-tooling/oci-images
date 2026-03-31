FROM busybox:1.37.0@sha256:1487d0af5f52b4ba31c7e465126ee2123fe3f2305d638e7827681e7cf6c83d5e AS extract

# renovate: datasource=github-releases depName=just-containers/s6-overlay
ARG S6_OVERLAY_VERSION=v3.2.0.2

# https://github.com/just-containers/s6-overlay#using-cmd
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-noarch.tar.xz /tmp
RUN tar -C / -Jxpf /tmp/s6-overlay-noarch.tar.xz

FROM ghcr.io/paperless-ngx/paperless-ngx:2.20.11@sha256:1919ba5edec278e81d2393efc82c97c9e3e18ef9dfcb43fdcfa7359dd3adfe99

# Replace the paperless s6 configuration with the default configuration.
# This is needed so that paperless does not start
RUN rm -r /etc/s6-overlay/s6-rc.d/*
COPY --from=extract /etc/s6-overlay/s6-rc.d/ /etc/s6-overlay/s6-rc.d/

COPY export /usr/local/bin/export
CMD ["/usr/local/bin/export"]
