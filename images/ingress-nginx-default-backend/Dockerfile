FROM --platform=${TARGETPLATFORM} nginx:1.25.3@sha256:ac2b22fdbe4c13e6f3be8c5fe9a19677aa7614acaa1cbf5d354af723873cbd28

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
