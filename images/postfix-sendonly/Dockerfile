FROM --platform=${TARGETPLATFORM} alpine:3.23.2@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62

# hadolint ignore=DL3018
RUN apk add --no-cache --upgrade postfix supervisor rsyslog

# mail server will be listening on this port
EXPOSE 25

COPY config/supervisord/supervisord.conf /etc/supervisord.conf
COPY config/rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY config/postfix /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
