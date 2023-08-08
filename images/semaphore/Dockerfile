FROM --platform=${BUILDPLATFORM} node:18.17.0-alpine@sha256:e98b96c93214f1ac4253cc1741aa96933947ca904ba0dc750ba0e33016d18521 AS builder

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


FROM --platform=${BUILDPLATFORM} nginx:1.25.1-alpine-slim@sha256:f9daf8c7ddd6a86ff1f6bfaab3a0766a471307943e3b2c2f617f51e8c7611925
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
