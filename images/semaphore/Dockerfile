FROM --platform=${BUILDPLATFORM} node:18.17.1-alpine@sha256:05aae879a3a579d54e9a0742c34f2562c56ac7bdb1bd985b1ff9f29f40822324 AS builder

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


FROM --platform=${BUILDPLATFORM} nginx:1.25.1-alpine-slim@sha256:7d7e3ec705ac1d04fbdf4537ad009d5f170a035a494e96f6eb0f828c10c062b6
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
