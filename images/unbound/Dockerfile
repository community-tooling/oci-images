FROM --platform=${TARGETPLATFORM} alpine:3.18.5@sha256:e9542a53735fdb2ea926e50e0e449f7ccd95f3298fbae02b00a2d3713c1140ca

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
