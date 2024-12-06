FROM --platform=${TARGETPLATFORM} alpine:3.21.0@sha256:e323a465c03a31ad04374fc7239144d0fd4e2b92da6e3e0655580476d3a84621

# hadolint ignore=DL3018
RUN apk add --no-cache --upgrade postfix supervisor rsyslog

# mail server will be listening on this port
EXPOSE 25

COPY config/supervisord/supervisord.conf /etc/supervisord.conf
COPY config/rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY config/postfix /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
