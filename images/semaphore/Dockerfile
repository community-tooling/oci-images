FROM --platform=${BUILDPLATFORM} node:18.18.0-alpine@sha256:f21e9302edeacb1d4c7806fa4913ae715ae2a21e26f2ade26216b92e9740c607 AS builder

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


FROM --platform=${BUILDPLATFORM} nginx:1.25.2-alpine-slim@sha256:c158a8722cc5c67d557697606a1d8d9b942e568b521df9f8723e1d8aa0227485
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
