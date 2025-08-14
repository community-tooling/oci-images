FROM --platform=${TARGETPLATFORM} nginx:1.29.1@sha256:0301e87c557f7514729bdb6d331f037c1f8fe607cbe87c0a8a68bae76d23ce16

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
