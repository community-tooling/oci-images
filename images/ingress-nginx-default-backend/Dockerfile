FROM --platform=${TARGETPLATFORM} nginx:1.27.0@sha256:fbb3fa1321fa981aa83728a7b6c666d03e6f025334e806c02ba6d82c2a3f68da

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
