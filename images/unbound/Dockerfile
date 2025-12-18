FROM --platform=${TARGETPLATFORM} alpine:3.23.2@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62

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
