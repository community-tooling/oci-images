FROM --platform=${TARGETPLATFORM} alpine:3.20.0@sha256:77726ef6b57ddf65bb551896826ec38bc3e53f75cdde31354fbffb4f25238ebd

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
