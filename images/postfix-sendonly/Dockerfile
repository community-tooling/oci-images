FROM --platform=${TARGETPLATFORM} alpine:3.18.5@sha256:34871e7290500828b39e22294660bee86d966bc0017544e848dd9a255cdf59e0

# hadolint ignore=DL3018
RUN apk add --no-cache --upgrade postfix supervisor rsyslog

# mail server will be listening on this port
EXPOSE 25

COPY config/supervisord/supervisord.conf /etc/supervisord.conf
COPY config/rsyslog/rsyslog.conf /etc/rsyslog.conf
COPY config/postfix /etc/postfix/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
