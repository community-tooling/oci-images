FROM --platform=${TARGETPLATFORM} alpine:3.20.0@sha256:77726ef6b57ddf65bb551896826ec38bc3e53f75cdde31354fbffb4f25238ebd

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
