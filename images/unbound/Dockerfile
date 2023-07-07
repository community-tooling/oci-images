FROM --platform=${BUILDPLATFORM} alpine:3.13.5@sha256:1d30d1ba3cb90962067e9b29491fbd56997979d54376f23f01448b5c5cd8b462

# hadolint ignore=DL3018
RUN apk add --no-cache unbound

COPY unbound.conf /etc/unbound/unbound.conf
COPY root.key /etc/unbound/root.key
COPY root.hints /etc/unbound/root.hints

RUN chown -R unbound:unbound /etc/unbound && \
    unbound-checkconf

USER unbound

EXPOSE 5353/udp
ENTRYPOINT ["unbound", "-d"]
