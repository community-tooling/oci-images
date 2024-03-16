FROM --platform=${TARGETPLATFORM} node:18.19.1-alpine@sha256:052842284f4dccfbe672a8259604d5b40ab1c028e19ae41416010a00bddaff6a AS builder

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

FROM --platform=${TARGETPLATFORM} nginx:1.25.4-alpine-slim@sha256:3d819042aa3b1f8eef5f1d923d3f34c287e43dc7e6b4dac3bbdfe018265932c8
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
