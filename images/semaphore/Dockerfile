FROM --platform=${TARGETPLATFORM} node:18.19.0-alpine@sha256:f90dfd61592b24dfb2aff8ffe57c65dcbbc4794b38d2acab575ec3d1f124c6f4 AS builder

# renovate: datasource=github=tags depName=NickColley/semaphore
ENV SEMAPHORE_VERSION=1.0.0
RUN wget -q -O semaphore.zip https://github.com/NickColley/semaphore/archive/refs/tags/${SEMAPHORE_VERSION}.zip
RUN unzip semaphore.zip && mv /semaphore-${SEMAPHORE_VERSION} /semaphore
WORKDIR /semaphore

# Make oauth website dynamic until https://github.com/NickColley/semaphore/pull/71 is merged and released.
# Pinning apk packages tends to break because old versions are immediately removed from their mirrors.
# hadolint ignore=DL3018
RUN apk add --no-cache sed && \
    sed -i 's/website: WEBSITE/website: basename(instanceName)/' src/routes/_api/oauth.js

RUN yarn --production --pure-lockfile && yarn build

FROM --platform=${TARGETPLATFORM} nginx:1.25.3-alpine-slim@sha256:ef0f89659d9d2788d10facf7b8c80e8e8631a3984be2611ec1d90ffd9c48a054
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
