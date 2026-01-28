FROM --platform=${TARGETPLATFORM} alpine:3.23.3@sha256:25109184c71bdad752c8312a8623239686a9a2071e8825f20acb8f2198c3f659

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
