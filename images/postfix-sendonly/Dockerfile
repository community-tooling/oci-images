FROM --platform=${TARGETPLATFORM} alpine:3.18.5@sha256:e9542a53735fdb2ea926e50e0e449f7ccd95f3298fbae02b00a2d3713c1140ca

# hadolint ignore=DL3018
RUN apk add --no-cache --upgrade postfix supervisor rsyslog

# mail server will be listening on this port
EXPOSE 25

COPY config/supervisord/supervisord.conf /etc/supervisord.conf
COPY config/rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY config/postfix /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
