FROM --platform=${TARGETPLATFORM} node:18.19.0-alpine@sha256:96937b45510c226ffdc6ffd30f261d5273a70c21a0513f91d7d9a4762c035cae AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.3-alpine-slim@sha256:d50b0d87b5d34da5649e3acfc969011b2012ab9be62b70f8fb97c4d6467a317a
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
