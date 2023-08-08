FROM --platform=${BUILDPLATFORM} node:18.17.0-alpine AS builder

# renovate: datasource=github=tags depName=NickColley/semaphore
ENV SEMAPHORE_VERSION=1.0.0
RUN wget -q -O semaphore.zip https://github.com/NickColley/semaphore/archive/refs/tags/${SEMAPHORE_VERSION}.zip
RUN unzip semaphore.zip && mv /semaphore-${SEMAPHORE_VERSION} /semaphore
WORKDIR /semaphore
RUN yarn --production --pure-lockfile && yarn build

FROM --platform=${BUILDPLATFORM} nginx:1.25.1-alpine-slim
COPY --from=builder /semaphore/__sapper__/export /usr/share/nginx/html/
