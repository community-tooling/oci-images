FROM --platform=${TARGETPLATFORM} nginx:1.27.3@sha256:a83d18a6cc5442f151148c8965cac5d42b7640f6ca55f4ba8d718807e1b9fc6e

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
