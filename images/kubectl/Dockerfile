FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

ARG TARGETARCH

# renovate: datasource=github-tags depName=kubernetes/kubectl extractVersion=^kubernetes-(?<version>.*)$
ARG KUBECTL_VERSION=1.37.2

ARG URL="https://dl.k8s.io/release/v${KUBECTL_VERSION}/bin/linux/${TARGETARCH}/kubectl"

# Pinning the versions here does not work well since we can't upgrade the alpine version and the
# versions with the same PR, see https://github.com/renovatebot/renovate/discussions/10452.
# Therefore, we opt to not do this at all for now.
#
# hadolint ignore=DL3018
RUN apk add --no-cache \
  bash \
  coreutils \
  curl \
  jq

RUN curl -Lo /usr/local/bin/kubectl "$URL" && \
  chmod +x /usr/local/bin/kubectl && \
  kubectl version --client=true

ENTRYPOINT ["/bin/bash"]
