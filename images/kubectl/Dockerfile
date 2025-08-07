FROM alpine:3.22.1@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

ARG TARGETARCH

# renovate: datasource=github-tags depName=kubernetes/kubectl extractVersion=^kubernetes-(?<version>.*)$
ARG KUBECTL_VERSION=1.33.3

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
