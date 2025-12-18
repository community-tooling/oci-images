FROM --platform=${TARGETPLATFORM} alpine:3.23.2@sha256:865b95f46d98cf867a156fe4a135ad3fe50d2056aa3f25ed31662dff6da4eb62

# Pinning the openssh version here does not work well since we can't upgrade the alpine version and the
# openssh version with the same PR, see https://github.com/renovatebot/renovate/discussions/10452.
# Therefore, we opt to not do this at all for now.
#
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
