FROM --platform=${TARGETPLATFORM} node:18.19.1-alpine@sha256:f75c64adb043039b3e37573ed709ca3a6f822f20eb7895966ebf14d677f01bc7 AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.4-alpine-slim@sha256:cbbb87ca9417ed5cac0fe5dbbc489b18296721afd20c0b88000e3bea1cae3b4b
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
