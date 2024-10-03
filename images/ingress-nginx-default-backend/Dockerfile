FROM --platform=${TARGETPLATFORM} nginx:1.27.2@sha256:fc533fb1dc49e44ce3beda4b3f7d53bd4c483ae983a6756318f4828b0064a53e

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
