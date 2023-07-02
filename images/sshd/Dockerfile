FROM --platform=${BUILDPLATFORM} alpine:3.13.5@sha256:1d30d1ba3cb90962067e9b29491fbd56997979d54376f23f01448b5c5cd8b462

# hadolint ignore=DL3018
RUN apk add --no-cache openssh

COPY entrypoint.sh /entrypoint.sh
COPY sshd_config /etc/ssh/sshd_config

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN addgroup sftp && \
    adduser -D -H -u 1000 -h /data -G sftp -s /bin/false upload && \
    echo upload:* | chpasswd

EXPOSE 22
ENTRYPOINT ["/entrypoint.sh"]
