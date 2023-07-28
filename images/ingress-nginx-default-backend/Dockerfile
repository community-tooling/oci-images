FROM --platform=${BUILDPLATFORM} nginx:1.25.1@sha256:e67bce60872000987d2a86ea0c4338b7e941accfd2ffd1d62ceaf9a100396c97

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
