FROM --platform=${TARGETPLATFORM} node:9.11.2-slim@sha256:288b29c1925d65b2d7d8701f8ada201e7dcd066438c0fb4299c35dff129b893f

WORKDIR /app

# Do not use --force-yes. We need to here, but this is a sign that something is wrong (in this case, we need to upgrade this to mailtrain v2)
RUN sed -i 's/deb\.debian\.org/archive.debian.org/g;/security\.debian\.org/d;/jessie-updates/d' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y --force-yes --no-install-recommends \
    git="1:2.1.4-2.1+deb8u6" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 --branch v1.24.1 https://github.com/Mailtrain-org/mailtrain.git . && \
    npm install --production

ENV NODE_ENV=production
CMD [ "npm", "start" ]
EXPOSE 3000
