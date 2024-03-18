FROM --platform=${TARGETPLATFORM} node:18.19.1-alpine@sha256:c7620fdecfefb96813da62519897808775230386f4c8482e972e37b8b18cb460 AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.4-alpine-slim@sha256:c5a4139b771934c09cd55636134ce416803f7c672b9ae4e80b4ec5b76876851e
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
