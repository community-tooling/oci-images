FROM --platform=${TARGETPLATFORM} alpine:3.22.1@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

# hadolint ignore=DL3018
RUN apk add --no-cache --upgrade postfix supervisor rsyslog

# mail server will be listening on this port
EXPOSE 25

COPY config/supervisord/supervisord.conf /etc/supervisord.conf
COPY config/rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY config/postfix /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
