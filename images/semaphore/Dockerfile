FROM --platform=${TARGETPLATFORM} node:18.20.1-alpine@sha256:6d9d5269cbe4088803e9ef81da62ac481c063b60cadbe8e628bfcbb12296d901 AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.4-alpine-slim@sha256:b841779b72c127bdcb6e58b2ae3d810f890e020460858d84c7bd38d15cf26ddf
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
