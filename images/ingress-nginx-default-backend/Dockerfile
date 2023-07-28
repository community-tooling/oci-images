FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:69267c1a48d6197da6d7c84d85717fc2a1673c27809e390cc29c43e0d2c6d304

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
