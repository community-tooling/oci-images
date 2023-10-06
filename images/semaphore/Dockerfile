FROM --platform=${TARGETPLATFORM} node:20.8.0-alpine@sha256:37750e51d61bef92165b2e29a77da4277ba0777258446b7a9c99511f119db096 AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.2-alpine-slim@sha256:97c1300332f261f2ca967d3f6ffe18822f2007c898328411ea134a39fcddd32b
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
