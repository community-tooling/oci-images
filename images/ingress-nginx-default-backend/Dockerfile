FROM --platform=${TARGETPLATFORM} nginx:1.25.2@sha256:bf79ebd6fc22cfe2d6b949d385d512a172fe8c3d36b77b7717a2d8abf056d107

COPY nginx.conf /etc/nginx/nginx.conf
COPY error_pages/* /usr/share/nginx/html/
